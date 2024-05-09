// Created by: Christo Pananjickal, Created at: 29-04-2024 09:31 pm

/// [TimelineModel] is just a data model used to parse the json data from the API.
class TimelineModel {
  final String roleOrDegree;
  final String institutionName;
  final String description;
  final DateTime fromDate;
  final DateTime? toDate;
  final String iconUrl;
  const TimelineModel({
    required this.roleOrDegree,
    required this.institutionName,
    required this.description,
    required this.fromDate,
    required this.toDate,
    required this.iconUrl,
  });

  factory TimelineModel.fromJson(Map<String, dynamic> json) => TimelineModel(
        roleOrDegree: json['role_or_degree'] ?? '',
        institutionName: json['institution_name'] ?? '',
        description: json['description'] ?? '',
        fromDate: DateTime.tryParse(json['from_date']) ?? DateTime.now(),
        toDate: DateTime.tryParse(json['to_date']),
        iconUrl: json['icon_url'] ?? '',
      );
}
