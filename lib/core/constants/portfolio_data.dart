import 'package:flutter/material.dart';
import '../../data/models/project_model.dart';
import '../../data/models/skill_model.dart';
import '../../data/models/experience_model.dart';
import '../../data/models/social_link_model.dart';
import 'asset_paths.dart';
import 'app_constants.dart';

class PortfolioData {
  // Sample projects data
  static List<Project> get sampleProjects => [
        Project(
          id: '1',
          title: 'E-Commerce Flutter App',
          description:
              'A full-featured e-commerce mobile application with cart, payments, and user management.',
          detailedDescription:
              'A comprehensive e-commerce solution built with Flutter and Firebase, featuring user authentication, product catalog, shopping cart, payment integration, and order management.',
          technologies: ['Flutter', 'Firebase', 'Stripe', 'Provider'],
          images: [
            'assets/images/projects/ecommerce_1.jpg',
            'assets/images/projects/ecommerce_2.jpg',
          ],
          liveUrl: 'https://your-app-link.com',
          githubUrl: 'https://github.com/yourusername/ecommerce-app',
          category: ProjectCategory.mobileApp,
          status: ProjectStatus.completed,
          createdDate: DateTime(2024, 1, 15),
          features: [
            'User Authentication',
            'Product Catalog',
            'Shopping Cart',
            'Payment Integration',
            'Order Tracking',
          ],
          isFeatured: true,
          priority: 1,
        ),
        // Add more sample projects...
      ];

  // Sample skills data
  static List<Skill> get sampleSkills => [
        const Skill(
          id: '1',
          name: 'Flutter',
          description: 'Cross-platform mobile and web development framework',
          category: SkillCategory.framework,
          level: SkillLevel.expert,
          iconPath: AssetPaths.flutterIcon,
          color: Color(0xFF02569B),
          yearsOfExperience: 3,
          isHighlighted: true,
        ),
        const Skill(
          id: '2',
          name: 'Dart',
          description:
              'Programming language optimized for building mobile, desktop, server, and web applications',
          category: SkillCategory.programming,
          level: SkillLevel.expert,
          iconPath: AssetPaths.dartIcon,
          color: Color(0xFF0175C2),
          yearsOfExperience: 3,
          isHighlighted: true,
        ),
        // Add more sample skills...
      ];

  // Sample experience data
  static List<Experience> get sampleExperience => [
        Experience(
          id: '1',
          company: 'Tech Company Inc.',
          position: 'Senior Flutter Developer',
          description:
              'Led mobile app development team and architected scalable Flutter applications.',
          startDate: DateTime(2023, 1, 1),
          endDate: null,
          isCurrent: true,
          location: 'Remote',
          type: ExperienceType.fullTime,
          responsibilities: [
            'Lead Flutter development team of 5 developers',
            'Architect and develop mobile applications',
            'Code review and mentoring junior developers',
            'Collaborate with design and backend teams',
          ],
          achievements: [
            'Increased app performance by 40%',
            'Reduced development time by 30% through code reusability',
            'Successfully launched 3 major mobile applications',
          ],
          technologies: ['Flutter', 'Dart', 'Firebase', 'REST APIs'],
        ),
        // Add more sample experience...
      ];

  // Sample social links
  static List<SocialLink> get sampleSocialLinks => [
        const SocialLink(
          id: '1',
          name: 'GitHub',
          url: AppConstants.githubUrl,
          iconPath: AssetPaths.githubIcon,
          color: Color(0xFF333333),
        ),
        const SocialLink(
          id: '2',
          name: 'LinkedIn',
          url: AppConstants.linkedinUrl,
          iconPath: 'assets/images/icons/linkedin.svg',
          color: Color(0xFF0077B5),
        ),
        // Add more social links...
      ];
}
