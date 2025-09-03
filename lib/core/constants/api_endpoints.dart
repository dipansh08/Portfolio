class ApiEndpoints {
  // Base URLs
  static const String baseUrl = '';
  static const String githubApiBase = 'https://api.github.com';

  // Contact Form
  static const String contactEndpoint = '$baseUrl/contact';
  static const String subscribeEndpoint = '$baseUrl/subscribe';

  // GitHub API
  static const String githubRepos = '$githubApiBase/users/yourusername/repos';
  static const String githubProfile = '$githubApiBase/users/yourusername';

  // Analytics (if using custom analytics)
  static const String analyticsEndpoint = '$baseUrl/analytics';
}
