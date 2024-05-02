// Created by: Christo Pananjickal, Created at: 28-04-2024 11:39 am

import 'contact_model.dart';
import 'profile_model.dart';
import 'project_model.dart';
import 'about_model.dart';

class UserModel {
  AboutModel about;
  ProfileModel profile;
  List<ProjectModel> projects;
  ContactModel contact;

  UserModel({required this.about, required this.profile, required this.projects, required this.contact});

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        about: AboutModel.fromJson(json['about'] ?? {}),
        profile: ProfileModel.fromJson(json['profile'] ?? {}),
        projects: List<ProjectModel>.from((json['projects'] ?? []).map((x) => ProjectModel.fromJson(x))),
        contact: ContactModel.fromJson(json['contact'] ?? {}),
      );
}
