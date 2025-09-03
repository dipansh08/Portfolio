class AssetPaths {
  // Images
  static const String _imagesPath = 'assets/images';

  // Profile Images
  static const String profileImage = '$_imagesPath/profile/profile.jpg';
  static const String profileImageCircular =
      '$_imagesPath/profile/profile_circular.png';
  static const String heroBackgroundImage = '$_imagesPath/hero_background.jpg';

  // Project Images
  static const String _projectsPath = '$_imagesPath/projects';
  static const String projectPlaceholder = '$_projectsPath/placeholder.png';

  // Icons
  static const String _iconsPath = '$_imagesPath/icons';
  static const String flutterIcon = '$_iconsPath/flutter.svg';
  static const String dartIcon = '$_iconsPath/dart.svg';
  static const String firebaseIcon = '$_iconsPath/firebase.svg';
  static const String githubIcon = '$_iconsPath/github.svg';

  // Data Files
  static const String portfolioData = 'assets/data/portfolio_data.json';

  // Animations/Lottie (if used)
  static const String _animationsPath = 'assets/animations';
  static const String loadingAnimation = '$_animationsPath/loading.json';
  static const String successAnimation = '$_animationsPath/success.json';
}
