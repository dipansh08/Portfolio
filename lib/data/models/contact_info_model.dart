class ContactInfo {
  final String name;
  final String email;
  final String? phone;
  final String subject;
  final String message;
  final DateTime timestamp;
  final ContactStatus status;

  const ContactInfo({
    required this.name,
    required this.email,
    this.phone,
    required this.subject,
    required this.message,
    required this.timestamp,
    this.status = ContactStatus.pending,
  });

  factory ContactInfo.fromJson(Map<String, dynamic> json) {
    return ContactInfo(
      name: json['name'],
      email: json['email'],
      phone: json['phone'],
      subject: json['subject'],
      message: json['message'],
      timestamp: DateTime.parse(json['timestamp']),
      status: ContactStatus.values.firstWhere(
        (e) => e.toString().split('.').last == json['status'],
        orElse: () => ContactStatus.pending,
      ),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'phone': phone,
      'subject': subject,
      'message': message,
      'timestamp': timestamp.toIso8601String(),
      'status': status.toString().split('.').last,
    };
  }
}

enum ContactStatus {
  pending,
  read,
  replied,
  archived,
}
