// Created by: Christo Pananjickal, Created at: 28-04-2024 12:15 pm

import 'package:portfolio/models/user_models/education_model.dart';

class ProfileModel {
  String name;
  String shortName;
  String profileImage;
  String whatAmI;
  DateTime dob;
  List<TimelineModel> education;

  ProfileModel({
    required this.name,
    required this.shortName,
    required this.profileImage,
    required this.dob,
    required this.whatAmI,
    required this.education,
  });

  factory ProfileModel.fromJson(Map<String, dynamic> json) => ProfileModel(
        name: json['name'] ?? '',
        shortName: json['short_name'] ?? '',
        profileImage: json['profile_image'] ?? '',
        whatAmI: json['what_am_i'] ?? '',
        dob: DateTime.tryParse(json['dob']) ?? DateTime.now(),
        education: List<TimelineModel>.from((json['timeline'] ?? []).map((e) => TimelineModel.fromJson(e))),
      );
}
