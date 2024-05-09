// Created by: Christo Pananjickal, Created at: 28-04-2024 12:15 pm

import 'package:portfolio/models/user_models/url_model.dart';

/// [ProjectModel] is just a data model used to parse the json data from the API.
class ProjectModel {
  String name;
  String role;
  String description;
  List<UrlModel> technologies;
  List<UrlModel> urls;
  DateTime fromDate;
  DateTime? toDate;

  ProjectModel({
    required this.name,
    required this.role,
    required this.description,
    required this.technologies,
    required this.urls,
    required this.toDate,
    required this.fromDate,
  });

  factory ProjectModel.fromJson(Map<String, dynamic> json) => ProjectModel(
        name: json['name'] ?? '',
        role: json['role'] ?? '',
        description: json['description'] ?? '',
        technologies: List<UrlModel>.from((json['technologies'] ?? []).map((x) => UrlModel.fromJson(x))),
        urls: List<UrlModel>.from((json['urls'] ?? []).map((x) => UrlModel.fromJson(x))),
        fromDate: DateTime.tryParse(json['from_date']) ?? DateTime.now(),
        toDate: DateTime.tryParse(json['to_date']),
      );
}
