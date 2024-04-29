// Created by: Christo Pananjickal, Created at: 28-04-2024 12:15 pm

class ProfileModel {
  String name;
  String shortName;
  String profileImage;
  DateTime dob;
  String emailId;
  String phone;
  String address;
  String postalCode;

  ProfileModel({
    required this.name,
    required this.shortName,
    required this.profileImage,
    required this.dob,
    required this.emailId,
    required this.phone,
    required this.address,
    required this.postalCode,
  });

  factory ProfileModel.fromJson(Map<String, dynamic> json) => ProfileModel(
        name: json['name'] ?? '',
        shortName: json['short_name'] ?? '',
        profileImage: json['profile_image'] ?? '',
        dob: DateTime.tryParse(json['dob']) ?? DateTime(1999),
        emailId: json['email_id'] ?? '',
        phone: json['phone'] ?? '',
        address: json['address'] ?? '',
        postalCode: json['postal_code'] ?? '',
      );
}
