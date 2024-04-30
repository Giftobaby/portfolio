// Created by: Christo Pananjickal, Created at: 29-04-2024 01:17 pm

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:portfolio/extensions/context_extensions.dart';
import 'package:portfolio/providers/user_info_provider.dart';
import 'package:portfolio/theme/colors.dart';
import 'package:portfolio/theme/text_styles.dart';
import 'package:portfolio/ui/profile_screen/widgets/time_line_widget.dart';
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
              SizedBox(
                width: context.percentWidth * 60,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _ProfileTextWidget(text: 'Name'),
                        _ProfileTextWidget(text: 'Date of Birth'),
                        _ProfileTextWidget(text: 'Duration Since Birth'),
                        _ProfileTextWidget(text: 'What am I'),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Column(
                        children: [
                          _ProfileTextWidget(text: ':'),
                          _ProfileTextWidget(text: ':'),
                          _ProfileTextWidget(text: ':'),
                          _ProfileTextWidget(text: ':'),
                        ],
                      ),
                    ),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _ProfileTextWidget(text: provider.userModel!.profile.name),
                          _ProfileTextWidget(text: DateFormat('dd-MMM-yyyy').format(provider.userModel!.profile.dob)),
                          _ProfileTextWidget(text: _getAgeString(provider.userModel!.profile.dob)),
                          _ProfileTextWidget(text: provider.userModel!.profile.whatAmI),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 36),
              Text('My Timeline', style: Ts.ts26W600(color: appColors.textBlue)),
              Expanded(child: TimeLineWidget(timelines: provider.userModel!.profile.timeline)),
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

class _ProfileTextWidget extends StatelessWidget {
  final String text;
  const _ProfileTextWidget({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.symmetric(vertical: 4), child: Text(text, style: Ts.ts18W600()));
  }
}

// class _ProfileSpaceWidget extends StatelessWidget {
//   const _ProfileSpaceWidget({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return ;
//   }
// }
