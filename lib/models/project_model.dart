// Created by: Christo Pananjickal, Created at: 28-04-2024 12:15 pm

import 'package:portfolio/models/url_model.dart';

class ProjectModel {
  String name;
  String role;
  String description;
  List<String> technologies;
  List<UrlModel> urls;

  ProjectModel({
    required this.name,
    required this.role,
    required this.description,
    required this.technologies,
    required this.urls,
  });

  factory ProjectModel.fromJson(Map<String, dynamic> json) => ProjectModel(
        name: json['name'] ?? '',
        role: json['role'] ?? '',
        description: json['description'] ?? '',
        technologies: List<String>.from((json['technologies'] ?? []).map((x) => x)),
        urls: List<UrlModel>.from((json['urls'] ?? []).map((x) => UrlModel.fromJson(x))),
      );
}
