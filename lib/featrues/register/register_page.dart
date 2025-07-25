import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:go_router/go_router.dart';
import 'package:hive/hive.dart';

import '../../Constants/form_field_names.dart';
import '../../Constants/hive_boxes.dart';
import '../../db/user_model_hive.dart';
import '../../l10n/app_localizations.dart';
import '../../widgets/avatar_picker.dart';
import 'bloc/register_bloc.dart';
import 'bloc/register_event.dart';
import 'bloc/register_state.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  final _formKey = GlobalKey<FormBuilderState>();

  InputDecoration _inputDecoration({
    required BuildContext context,
    required String label,
    required IconData icon,
    Widget? suffixIcon,
  }) {
    final theme = Theme.of(context);
    return InputDecoration(
      labelText: label,
      prefixIcon: Icon(icon, color: theme.colorScheme.primary),
      suffixIcon: suffixIcon,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: theme.colorScheme.primary, width: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;
    final userBox = Hive.box<UserModelHive>(HiveBoxes.user);

    return BlocProvider(
      create: (_) => RegisterBloc(userBox),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => context.pop(),
          ),
          title: Text(l10n.registerPageTitle),
          backgroundColor: theme.colorScheme.primary,
          foregroundColor: theme.colorScheme.onPrimary,
        ),
        body: BlocListener<RegisterBloc, RegisterState>(
          listener: (context, state) {
            if (state.errorMessage != null) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(state.errorMessage!)));
            }
            if (state.isSuccess) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(l10n.registerSuccess)));
              context.pop();
            }
          },
          child: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () => FocusScope.of(context).unfocus(),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: FormBuilder(
                key: _formKey,
                autovalidateMode: AutovalidateMode.disabled,
                child: BlocBuilder<RegisterBloc, RegisterState>(
                  builder: (context, state) {
                    final bloc = context.read<RegisterBloc>();

                    return ListView(
                      keyboardDismissBehavior:
                          ScrollViewKeyboardDismissBehavior.onDrag,
                      children: [
                        Center(
                          child: AvatarPicker(
                            imagePath: state.imagePath,
                            onTap: () =>
                                bloc.add(const RegisterEvent.pickImage()),
                          ),
                        ),
                        const SizedBox(height: 24),
                        FormBuilderTextField(
                          name: FormFieldNames.name,
                          decoration: _inputDecoration(
                            context: context,
                            label: l10n.registerNameLabel,
                            icon: Icons.person,
                          ),
                          initialValue: state.name,
                          onChanged: (val) =>
                              bloc.add(RegisterEvent.nameChanged(val ?? '')),
                          validator: FormBuilderValidators.required(
                            errorText: l10n.registerFieldRequiredName,
                          ),
                          textInputAction: TextInputAction.next,
                        ),
                        const SizedBox(height: 16),
                        FormBuilderTextField(
                          name: FormFieldNames.email,
                          decoration: _inputDecoration(
                            context: context,
                            label: l10n.registerEmailLabel,
                            icon: Icons.email,
                          ),
                          initialValue: state.email,
                          onChanged: (val) =>
                              bloc.add(RegisterEvent.emailChanged(val ?? '')),
                          validator: FormBuilderValidators.compose([
                            FormBuilderValidators.required(
                              errorText: l10n.registerFieldRequiredEmail,
                            ),
                            FormBuilderValidators.email(
                              errorText: l10n.registerFormInvalidEmail,
                            ),
                          ]),
                          inputFormatters: [
                            FilteringTextInputFormatter.deny(RegExp(r'\s')),
                          ],
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                        ),
                        const SizedBox(height: 16),
                        FormBuilderTextField(
                          name: FormFieldNames.password,
                          obscureText: state.obscurePassword,
                          decoration: _inputDecoration(
                            context: context,
                            label: l10n.registerPasswordLabel,
                            icon: Icons.lock,
                            suffixIcon: IconButton(
                              icon: Icon(
                                state.obscurePassword
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: theme.colorScheme.primary,
                              ),
                              onPressed: () => bloc.add(
                                const RegisterEvent.toggleObscurePassword(),
                              ),
                            ),
                          ),
                          initialValue: state.password,
                          onChanged: (val) => bloc.add(
                            RegisterEvent.passwordChanged(val ?? ''),
                          ),
                          validator: FormBuilderValidators.compose([
                            FormBuilderValidators.required(
                              errorText: l10n.registerFieldRequiredPassword,
                            ),
                            FormBuilderValidators.minLength(
                              6,
                              errorText: l10n.registerPasswordMinLength,
                            ),
                          ]),
                          textInputAction: TextInputAction.next,
                        ),
                        const SizedBox(height: 16),
                        FormBuilderTextField(
                          name: FormFieldNames.confirmPassword,
                          obscureText: state.obscureConfirm,
                          decoration: _inputDecoration(
                            context: context,
                            label: l10n.registerConfirmPasswordLabel,
                            icon: Icons.lock,
                            suffixIcon: IconButton(
                              icon: Icon(
                                state.obscureConfirm
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: theme.colorScheme.primary,
                              ),
                              onPressed: () => bloc.add(
                                const RegisterEvent.toggleObscureConfirmPassword(),
                              ),
                            ),
                          ),
                          initialValue: state.confirmPassword,
                          onChanged: (val) => bloc.add(
                            RegisterEvent.confirmPasswordChanged(val ?? ''),
                          ),
                          validator: (value) {
                            final password = state.password ?? '';
                            if (value == null || value.trim().isEmpty) {
                              return l10n.registerConfirmPasswordEmpty;
                            }
                            if (value.trim() != password) {
                              return l10n.registerConfirmPasswordMismatch;
                            }
                            return null;
                          },
                          textInputAction: TextInputAction.done,
                        ),
                        const SizedBox(height: 32),
                        SizedBox(
                          height: 50,
                          child: ElevatedButton(
                            onPressed: state.isFormValid && !state.isSubmitting
                                ? () {
                                    final valid =
                                        _formKey.currentState
                                            ?.saveAndValidate() ??
                                        false;
                                    if (!valid) return;
                                    bloc.add(
                                      const RegisterEvent.registerSubmitted(),
                                    );
                                  }
                                : null,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: theme.colorScheme.primary,
                              foregroundColor: theme.colorScheme.onPrimary,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              elevation: 6,
                            ),
                            child: state.isSubmitting
                                ? const SizedBox(
                                    width: 24,
                                    height: 24,
                                    child: CircularProgressIndicator(
                                      strokeWidth: 2,
                                    ),
                                  )
                                : Text(l10n.registerButton),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
