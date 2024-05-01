// Created by: Christo Pananjickal, Created at: 29-04-2024 09:31 pm

import 'package:collection/collection.dart';

class TimelineModel {
  final String roleOrDegree;
  final String institutionName;
  final String description;
  final DateTime fromDate;
  final DateTime? toDate;
  final RoleType roleType;
  const TimelineModel({
    required this.roleOrDegree,
    required this.institutionName,
    required this.description,
    required this.fromDate,
    required this.toDate,
    required this.roleType,
  });

  factory TimelineModel.fromJson(Map<String, dynamic> json) => TimelineModel(
        roleOrDegree: json['role_or_degree'] ?? '',
        institutionName: json['institution_name'] ?? '',
        description: json['description'] ?? '',
        fromDate: DateTime.tryParse(json['from_date']) ?? DateTime.now(),
        toDate: DateTime.tryParse(json['to_date']),
        roleType: RoleType.fromString(json['role_type']),
      );
}

enum RoleType {
  studies('studies'),
  baby('baby'),
  job('job');

  final String label;
  const RoleType(this.label);

  static RoleType fromString(String? type) {
    RoleType? roleType = RoleType.values.firstWhereOrNull((e) => e.label == type);

    return roleType ?? RoleType.studies;
  }
}
