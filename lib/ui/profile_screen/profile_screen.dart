// Created by: Christo Pananjickal, Created at: 29-04-2024 01:17 pm

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:portfolio/providers/user_info_provider.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  Timer? timer;
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((t) {
      timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        setState(() {});
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    if (timer?.isActive ?? false) timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<UserInfoProvider>(
      builder: (context, provider, child) {
        return Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProfileRowWidget(nameKey: 'Name', value: provider.userModel!.profile.name),
              ProfileRowWidget(
                nameKey: 'Date of Birth',
                value: DateFormat('dd-MMM-yyyy').format(provider.userModel!.profile.dob),
              ),
              ProfileRowWidget(nameKey: 'Duration since birth', value: _getAgeString(provider.userModel!.profile.dob)),
              ProfileRowWidget(nameKey: 'What am I', value: provider.userModel!.profile.whatAmI),
            ],
          ),
        );
      },
    );
  }

  String _getAgeString(DateTime dob) {
    final duration = DateTime.now().difference(dob);
    if (duration.isNegative) return '';

    int years = (duration.inDays / 365).floor();
    int months = ((duration.inDays % 365) / 30).floor();
    int days = (duration.inDays % 365) % 30;
    int hours = duration.inHours % 24;
    int minutes = duration.inMinutes % 60;
    int seconds = duration.inSeconds % 60;

    return '$years years, $months months, $days days, $hours hours, $minutes minutes and $seconds seconds';
  }
}

class ProfileRowWidget extends StatelessWidget {
  final String nameKey;
  final String value;
  const ProfileRowWidget({super.key, required this.nameKey, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: IntrinsicWidth(
        child: Row(
          children: [
            SizedBox(width: 160, child: Text(nameKey)),
            const Padding(padding: EdgeInsets.symmetric(horizontal: 8), child: Text(':')),
            Text(value),
          ],
        ),
      ),
    );
  }
}
