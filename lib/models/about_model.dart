// Created by: Christo Pananjickal, Created at: 28-04-2024 11:39 am

class AboutModel {
  String aboutDescription;

  AboutModel({required this.aboutDescription});

  factory AboutModel.fromJson(Map<String, dynamic> json) =>
      AboutModel(aboutDescription: json['about_description'] ?? '');
}
