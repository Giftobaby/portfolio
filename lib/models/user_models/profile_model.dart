// Created by: Christo Pananjickal, Created at: 28-04-2024 12:15 pm

import 'package:portfolio/models/user_models/education_model.dart';

class ProfileModel {
  String name;
  String shortName;
  String profileImage;
  String whatAmI;
  DateTime dob;
  String myTagLine;
  List<TimelineModel> timeline;

  ProfileModel({
    required this.name,
    required this.shortName,
    required this.profileImage,
    required this.dob,
    required this.whatAmI,
    required this.myTagLine,
    required this.timeline,
  });

  factory ProfileModel.fromJson(Map<String, dynamic> json) => ProfileModel(
        name: json['name'] ?? '',
        shortName: json['short_name'] ?? '',
        profileImage: json['profile_image'] ?? '',
        myTagLine: json['my_tag_line'] ?? '',
        whatAmI: json['what_am_i'] ?? '',
        dob: DateTime.tryParse(json['dob']) ?? DateTime.now(),
        timeline: List<TimelineModel>.from((json['timeline'] ?? []).map((e) => TimelineModel.fromJson(e))),
      );
}
