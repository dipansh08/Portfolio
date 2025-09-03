import 'dart:ui';

class SocialLink {
  final String id;
  final String name;
  final String url;
  final String iconPath;
  final Color color;
  final bool isActive;

  const SocialLink({
    required this.id,
    required this.name,
    required this.url,
    required this.iconPath,
    required this.color,
    this.isActive = true,
  });

  factory SocialLink.fromJson(Map<String, dynamic> json) {
    return SocialLink(
      id: json['id'],
      name: json['name'],
      url: json['url'],
      iconPath: json['iconPath'],
      color: Color(json['color']),
      isActive: json['isActive'] ?? true,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'url': url,
      'iconPath': iconPath,
      'color': color.value,
      'isActive': isActive,
    };
  }
}
