class RoadReportModel {
  final String firstName;
  final String lastName;
  final String email;
  final String phone;
  final String location;
  final String tagSomeone;
  final String description;
  final String reportType;
  final String fileUrl;
  final List<String> socialMediaTags;
  final DateTime createdAt;
  final String signature;

  RoadReportModel({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phone,
    required this.location,
    required this.tagSomeone,
    required this.description,
    required this.reportType,
    required this.fileUrl,
    required this.socialMediaTags,
    required this.createdAt,
    required this.signature,
  });

  Map<String, dynamic> toMap() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'phone': phone,
      'location': location,
      'tagSomeone': tagSomeone,
      'description': description,
      'reportType': reportType,
      'fileUrl': fileUrl,
      'socialMediaTags': socialMediaTags,
      'createdAt': createdAt.toIso8601String(),
      'signature': signature,
    };
  }

  factory RoadReportModel.fromMap(Map<String, dynamic> map) {
    return RoadReportModel(
      firstName: map['firstName'] ?? '',
      lastName: map['lastName'] ?? '',
      email: map['email'] ?? '',
      phone: map['phone'] ?? '',
      location: map['location'] ?? '',
      tagSomeone: map['tagSomeone'] ?? '',
      description: map['description'] ?? '',
      reportType: map['reportType'] ?? '',
      fileUrl: map['fileUrl'] ?? '',
      socialMediaTags: List<String>.from(map['socialMediaTags'] ?? []),
      createdAt: DateTime.parse(map['createdAt']),
      signature: map['signature'] ?? '',
    );
  }
} 