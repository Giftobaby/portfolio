// Created by: Christo Pananjickal, Created at: 28-04-2024 12:15 pm

/// [UrlModel] is just a data model used to parse the json data from the API.
class UrlModel {
  String label;
  String icon;
  String url;

  UrlModel({required this.label, required this.icon, required this.url});

  factory UrlModel.fromJson(Map<String, dynamic> json) => UrlModel(
        label: json['label'] ?? '',
        icon: json['icon'] ?? '',
        url: json['url'] ?? '',
      );
}
