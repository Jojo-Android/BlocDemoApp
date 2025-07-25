import 'dart:ui';

class Dimensions {
  // AppBar
  static const double appBarHeight = 120;

  // Avatar
  static const double avatarSize = 72;
  static const double avatarRadius = avatarSize / 2;
  static const double avatarLargeRadius = 60;
  static const double avatarLargeDiameter = avatarLargeRadius * 2;

  // Padding - Global Layout
  static const double horizontalPadding = 20;
  static const double verticalPadding = 12;
  static const double paddingAll = 16;

  // Padding - Component-specific
  static const double paddingProductTile = 12;
  static const double paddingEditIcon = 6;

  // Spacing (general purpose)
  static const double spacing4 = 4;
  static const double spacing6 = 6;
  static const double spacing10 = 10;
  static const double spacing12 = 12;
  static const double spacing16 = 16;
  static const double spacing20 = 20;
  static const double spacing24 = 24;
  static const double spacing32 = 32;

  // Border Radius
  static const double borderRadiusSmall = 12;
  static const double borderRadiusMedium = 16;
  static const double borderRadiusLarge = 24;
  static const double borderRadiusButton = 14;
  static const double borderRadiusCard = 16;
  static const double borderRadiusSliverAppBar = 32;

  // Image sizes
  static const double productImageSize = 64;
  static const double productImageErrorIconSize = 40;
  static const double errorIconSize = 48;
  static const double errorIconRadius = errorIconSize / 2;

  // Icon sizes
  static const double iconSize = avatarSize;
  static const double iconSizeLarge = 80;
  static const double favoriteIconSize = 28;
  static const double editIconSize = 20;
  static const double accountIconSize = 100;
  static const double inputIconSize = 24;
  static const double suffixIconButtonSize = 24;

  // Buttons & Loader
  static const double buttonHeight = 50;
  static const double buttonFontSize = 17;
  static const double fontSizeButton = 16;
  static const double buttonProgressSize = 24;
  static const double circularProgressStrokeWidth = 2;

  // Loader sizes
  static const double loaderSize = 32;
  static const double loaderStrokeWidth = 2;

  // Shadow
  static const double shadowBlur = 10;
  static const double shadowOpacity = 0.03;
  static const Offset shadowOffset = Offset(0, 2);

  // Text Shadow
  static const double textShadowBlur = 4;
  static const double textShadowOpacity = 0.3;
  static const Offset textShadowOffset = Offset(0, 1);

  // Text Sizes
  static const double textSizeTitleLarge = 22;
  static const double textSizeBodyMedium = 16;
  static const double textSizeLabelLarge = 14;

  // Letter Spacing
  static const double letterSpacingSmall = 0.15;
  static const double letterSpacingMedium = 0.5;

  // Splash screen
  static const double splashIconSize = 80;
  static const double splashSpacingSmall = 16;
  static const double splashSpacingLarge = 24;

  // Sliver AppBar (SettingView)
  static const double sliverAppBarExpandedHeight = 220;
  static const double sliverPaddingHorizontal = 16;
  static const double sliverPaddingVertical = 24;

  // ListTile
  static const double listTileSpacing = 12;
  static const double listTileBorderRadius = borderRadiusSmall;
  static const double listTileContentPaddingHorizontal = 20;
  static const double listTileContentPaddingVertical = 6;

  // Main View - Bottom Navigation
  static const double bottomNavBarTopRadius = 20;
  static const double bottomNavElevation = 14;

  // Cards & Lists (Home, Favorite)
  static const double listPadding = 16;
  static const double listCardMarginBottom = 16;
  static const double listCardBorderRadius = borderRadiusSmall;
  static const double favoritePaddingHorizontal = 16;
  static const double favoritePaddingVertical = 12;
  static const double favoriteEmptyMessageHorizontalPadding = 32;
  static const double favoriteListSeparatorHeight = 12;

  // CircleAvatar radius for lists
  static const double circleAvatarRadius = 24;

  // Trailing Loading Indicator (e.g. in lists)
  static const double trailingLoadingIndicatorSize = 24;

  // Elevated Button Padding
  static const double elevatedButtonHorizontalPadding = 24;
  static const double elevatedButtonVerticalPadding = 12;
  static const double elevatedButtonRadius = 8;

  // Card Elevation & Margin
  static const double cardElevation = 6;
  static const double cardMarginVertical = 8;
  static const double cardMarginHorizontal = 12;

  // Button Elevation
  static const double buttonElevation = 6;

  // Text Tile Background Opacity
  static const double tileColorOpacity = 0.15;

  // Suffix Icon Splash Radius
  static const double suffixIconSplashRadius = 16.0;

  // Avatar Picker & RegisterView
  static const double avatarPickerSpacing = 24;
  static const double fieldSpacing = 16;
}
