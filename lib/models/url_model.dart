// Created by: Christo Pananjickal, Created at: 28-04-2024 12:15 pm

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
