// Created by: Christo Pananjickal, Created at: 28-04-2024 11:39 am

import 'package:portfolio/models/user_models/url_model.dart';

class AboutModel {
  String greetingMessage;
  String greetingIntro;
  String aboutDescription;
  List<UrlModel> urls;

  AboutModel({
    required this.aboutDescription,
    required this.greetingMessage,
    required this.greetingIntro,
    required this.urls,
  });

  factory AboutModel.fromJson(Map<String, dynamic> json) => AboutModel(
        aboutDescription: json['about_description'] ?? '',
        greetingMessage: json['greeting_message'] ?? '',
        greetingIntro: json['greeting_intro'] ?? '',
        urls: List<UrlModel>.from((json['urls'] ?? []).map((e) => UrlModel.fromJson(e))),
      );
}
