class Experience {
  final String id;
  final String company;
  final String position;
  final String description;
  final DateTime startDate;
  final DateTime? endDate;
  final bool isCurrent;
  final String location;
  final ExperienceType type;
  final List<String> responsibilities;
  final List<String> achievements;
  final List<String> technologies;
  final String? companyLogo;
  final String? companyUrl;

  const Experience({
    required this.id,
    required this.company,
    required this.position,
    required this.description,
    required this.startDate,
    this.endDate,
    this.isCurrent = false,
    required this.location,
    required this.type,
    this.responsibilities = const [],
    this.achievements = const [],
    this.technologies = const [],
    this.companyLogo,
    this.companyUrl,
  });

  factory Experience.fromJson(Map<String, dynamic> json) {
    return Experience(
      id: json['id'],
      company: json['company'],
      position: json['position'],
      description: json['description'],
      startDate: DateTime.parse(json['startDate']),
      endDate: json['endDate'] != null ? DateTime.parse(json['endDate']) : null,
      isCurrent: json['isCurrent'] ?? false,
      location: json['location'],
      type: ExperienceType.values.firstWhere(
        (e) => e.toString().split('.').last == json['type'],
        orElse: () => ExperienceType.fullTime,
      ),
      responsibilities: List<String>.from(json['responsibilities'] ?? []),
      achievements: List<String>.from(json['achievements'] ?? []),
      technologies: List<String>.from(json['technologies'] ?? []),
      companyLogo: json['companyLogo'],
      companyUrl: json['companyUrl'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'company': company,
      'position': position,
      'description': description,
      'startDate': startDate.toIso8601String(),
      'endDate': endDate?.toIso8601String(),
      'isCurrent': isCurrent,
      'location': location,
      'type': type.toString().split('.').last,
      'responsibilities': responsibilities,
      'achievements': achievements,
      'technologies': technologies,
      'companyLogo': companyLogo,
      'companyUrl': companyUrl,
    };
  }

  String get duration {
    final end = endDate ?? DateTime.now();
    final difference = end.difference(startDate);
    final years = difference.inDays ~/ 365;
    final months = (difference.inDays % 365) ~/ 30;

    if (years > 0 && months > 0) {
      return '$years yr $months mo';
    } else if (years > 0) {
      return '$years yr';
    } else if (months > 0) {
      return '$months mo';
    } else {
      return '1 mo';
    }
  }
}

enum ExperienceType {
  fullTime,
  partTime,
  contract,
  internship,
  freelance,
  volunteer,
}
