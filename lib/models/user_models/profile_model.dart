// Created by: Christo Pananjickal, Created at: 28-04-2024 12:15 pm

import 'package:portfolio/models/user_models/url_model.dart';

class ProfileModel {
  String name;
  DateTime dob;
  String emailId;
  String phone;
  String address;
  String postalCode;
  UrlModel github;
  UrlModel linkedin;

  ProfileModel({
    required this.name,
    required this.dob,
    required this.emailId,
    required this.phone,
    required this.address,
    required this.postalCode,
    required this.github,
    required this.linkedin,
  });

  factory ProfileModel.fromJson(Map<String, dynamic> json) => ProfileModel(
        name: json['name'] ?? '',
        dob: DateTime.tryParse(json['dob']) ?? DateTime(1999),
        emailId: json['email_id'] ?? '',
        phone: json['phone'] ?? '',
        address: json['address'] ?? '',
        postalCode: json['postal_code'] ?? '',
        github: UrlModel.fromJson(json['github'] ?? {}),
        linkedin: UrlModel.fromJson(json['linkedin'] ?? {}),
      );
}
