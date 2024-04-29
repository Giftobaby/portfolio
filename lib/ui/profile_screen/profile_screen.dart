// Created by: Christo Pananjickal, Created at: 29-04-2024 01:17 pm

import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [],
    );
  }
}

class ProfileRowWidget extends StatelessWidget {
  final String nameKey;
  final String value;
  const ProfileRowWidget({super.key, required this.nameKey, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(nameKey),
        Text(value),
      ],
    );
  }
}
