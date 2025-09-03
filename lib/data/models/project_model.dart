class Project {
  final String id;
  final String title;
  final String description;
  final String detailedDescription;
  final List<String> technologies;
  final List<String> images;
  final String? liveUrl;
  final String? githubUrl;
  final String? playStoreUrl;
  final String? appStoreUrl;
  final ProjectCategory category;
  final ProjectStatus status;
  final DateTime createdDate;
  final List<String> features;
  final bool isFeatured;
  final int priority;

  const Project({
    required this.id,
    required this.title,
    required this.description,
    required this.detailedDescription,
    required this.technologies,
    required this.images,
    this.liveUrl,
    this.githubUrl,
    this.playStoreUrl,
    this.appStoreUrl,
    required this.category,
    required this.status,
    required this.createdDate,
    required this.features,
    this.isFeatured = false,
    this.priority = 0,
  });

  factory Project.fromJson(Map<String, dynamic> json) {
    return Project(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      detailedDescription: json['detailedDescription'] ?? json['description'],
      technologies: List<String>.from(json['technologies']),
      images: List<String>.from(json['images']),
      liveUrl: json['liveUrl'],
      githubUrl: json['githubUrl'],
      playStoreUrl: json['playStoreUrl'],
      appStoreUrl: json['appStoreUrl'],
      category: ProjectCategory.values.firstWhere(
        (e) => e.toString().split('.').last == json['category'],
        orElse: () => ProjectCategory.other,
      ),
      status: ProjectStatus.values.firstWhere(
        (e) => e.toString().split('.').last == json['status'],
        orElse: () => ProjectStatus.completed,
      ),
      createdDate: DateTime.parse(json['createdDate']),
      features: List<String>.from(json['features'] ?? []),
      isFeatured: json['isFeatured'] ?? false,
      priority: json['priority'] ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'detailedDescription': detailedDescription,
      'technologies': technologies,
      'images': images,
      'liveUrl': liveUrl,
      'githubUrl': githubUrl,
      'playStoreUrl': playStoreUrl,
      'appStoreUrl': appStoreUrl,
      'category': category.toString().split('.').last,
      'status': status.toString().split('.').last,
      'createdDate': createdDate.toIso8601String(),
      'features': features,
      'isFeatured': isFeatured,
      'priority': priority,
    };
  }
}

enum ProjectCategory {
  mobileApp,
  webApp,
  uiUx,
  backend,
  openSource,
  personal,
  client,
  other,
}

enum ProjectStatus {
  planning,
  inProgress,
  completed,
  maintained,
  archived,
}
