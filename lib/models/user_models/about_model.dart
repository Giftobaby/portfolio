// Created by: Christo Pananjickal, Created at: 28-04-2024 11:39 am

class AboutModel {
  String greetingMessage;
  String greetingIntro;
  String aboutDescription;

  AboutModel({required this.aboutDescription, required this.greetingMessage, required this.greetingIntro});

  factory AboutModel.fromJson(Map<String, dynamic> json) => AboutModel(
        aboutDescription: json['about_description'] ?? '',
        greetingMessage: json['greeting_message'] ?? '',
        greetingIntro: json['greeting_intro'] ?? '',
      );
}
