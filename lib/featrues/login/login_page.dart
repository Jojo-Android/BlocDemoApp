import 'package:bloc_demo_app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:go_router/go_router.dart';

import '../../constants/form_field_names.dart';
import '../../l10n/app_localizations.dart';
import 'bloc/login_bloc.dart';
import 'bloc/login_event.dart';
import 'bloc/login_state.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormBuilderState>();
    final theme = Theme.of(context);
    final localizations = AppLocalizations.of(context)!;

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: BlocConsumer<LoginBloc, LoginState>(
            listener: (context, state) {
              state.maybeWhen(
                success: (obscurePassword) {
                  context.go(AppRoutes.mainPath);
                },
                failure: (errorMessage, obscurePassword) {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text(errorMessage)));
                },
                orElse: () {},
              );
            },
            builder: (context, state) {
              final obscurePassword = state.maybeWhen(
                initial: (obscure) => obscure,
                loading: (obscure) => obscure,
                failure: (_, obscure) => obscure,
                success: (obscure) => obscure,
                orElse: () => true,
              );

              final isLoading = state.maybeWhen(
                loading: (_) => true,
                orElse: () => false,
              );

              return FormBuilder(
                key: _formKey,
                autovalidateMode: AutovalidateMode.disabled,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.shopping_bag_outlined,
                      size: 80,
                      color: theme.primaryColor,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      localizations.loginPageTitle,
                      style: theme.textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: theme.primaryColor,
                      ),
                    ),
                    const SizedBox(height: 28),

                    // Email
                    FormBuilderTextField(
                      name: FormFieldNames.email,
                      decoration: InputDecoration(
                        labelText: localizations.loginEmailLabel,
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          color: theme.primaryColor,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(
                          errorText: localizations.loginInvalidEmail,
                        ),
                        FormBuilderValidators.email(
                          errorText: localizations.loginInvalidEmail,
                        ),
                      ]),
                    ),
                    const SizedBox(height: 16),

                    // Password
                    FormBuilderTextField(
                      name: FormFieldNames.password,
                      obscureText: obscurePassword,
                      decoration: InputDecoration(
                        labelText: localizations.loginPasswordLabel,
                        prefixIcon: Icon(
                          Icons.lock_outline,
                          color: theme.primaryColor,
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            obscurePassword
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: theme.primaryColor,
                          ),
                          onPressed: () {
                            context.read<LoginBloc>().add(
                              const TogglePasswordVisibility(),
                            );
                          },
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      validator: FormBuilderValidators.required(
                        errorText: localizations.loginEmptyPassword,
                      ),
                    ),
                    const SizedBox(height: 24),

                    // Login Button
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: isLoading
                            ? null
                            : () {
                                if (_formKey.currentState?.saveAndValidate() ??
                                    false) {
                                  final email = _formKey
                                      .currentState!
                                      .value[FormFieldNames.email]
                                      .toString()
                                      .trim();
                                  final password = _formKey
                                      .currentState!
                                      .value[FormFieldNames.password]
                                      .toString();
                                  context.read<LoginBloc>().add(
                                    LoginSubmitted(
                                      email: email,
                                      password: password,
                                    ),
                                  );
                                }
                              },
                        child: isLoading
                            ? const SizedBox(
                                width: 24,
                                height: 24,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                  color: Colors.white,
                                ),
                              )
                            : Text(localizations.loginButton),
                      ),
                    ),

                    const SizedBox(height: 12),

                    // Register Link
                    TextButton(
                      onPressed: isLoading
                          ? null
                          : () => context.push(AppRoutes.registerPath),
                      child: Text(localizations.loginRegisterLink),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
