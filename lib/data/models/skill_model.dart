import 'dart:ui';

class Skill {
  final String id;
  final String name;
  final String description;
  final SkillCategory category;
  final SkillLevel level;
  final String? iconPath;
  final String? iconUrl;
  final Color? color;
  final int yearsOfExperience;
  final List<String> relatedProjects;
  final bool isHighlighted;

  const Skill({
    required this.id,
    required this.name,
    required this.description,
    required this.category,
    required this.level,
    this.iconPath,
    this.iconUrl,
    this.color,
    required this.yearsOfExperience,
    this.relatedProjects = const [],
    this.isHighlighted = false,
  });

  factory Skill.fromJson(Map<String, dynamic> json) {
    return Skill(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      category: SkillCategory.values.firstWhere(
        (e) => e.toString().split('.').last == json['category'],
        orElse: () => SkillCategory.other,
      ),
      level: SkillLevel.values.firstWhere(
        (e) => e.toString().split('.').last == json['level'],
        orElse: () => SkillLevel.intermediate,
      ),
      iconPath: json['iconPath'],
      iconUrl: json['iconUrl'],
      color: json['color'] != null ? Color(json['color']) : null,
      yearsOfExperience: json['yearsOfExperience'] ?? 0,
      relatedProjects: List<String>.from(json['relatedProjects'] ?? []),
      isHighlighted: json['isHighlighted'] ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'category': category.toString().split('.').last,
      'level': level.toString().split('.').last,
      'iconPath': iconPath,
      'iconUrl': iconUrl,
      'color': color?.value,
      'yearsOfExperience': yearsOfExperience,
      'relatedProjects': relatedProjects,
      'isHighlighted': isHighlighted,
    };
  }

  double get proficiencyPercentage {
    switch (level) {
      case SkillLevel.beginner:
        return 0.3;
      case SkillLevel.intermediate:
        return 0.6;
      case SkillLevel.advanced:
        return 0.8;
      case SkillLevel.expert:
        return 0.95;
    }
  }
}

enum SkillCategory {
  programming,
  framework,
  database,
  tools,
  design,
  soft,
  other,
}

enum SkillLevel {
  beginner,
  intermediate,
  advanced,
  expert,
}
