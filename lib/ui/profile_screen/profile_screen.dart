// Created by: Christo Pananjickal, Created at: 29-04-2024 01:17 pm

import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/extensions/context_extensions.dart';
import 'package:portfolio/providers/user_info_provider.dart';
import 'package:portfolio/theme/colors.dart';
import 'package:portfolio/theme/text_styles.dart';
import 'package:portfolio/ui/profile_screen/widgets/time_line_widget.dart';
import 'package:portfolio/utils/static_values.dart';
import 'package:portfolio/widgets/custom_future_builder.dart';
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
        return CustomFutureBuilder(
          status: provider.status,
          onRetryTap: provider.getUserInfo,
          errorMessage: provider.errorMessage,
          childBuilder: (context) {
            return Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  SizedBox(
                    width: context.percentWidth * 60,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _ProfileTextWidget(text1: 'Name', text2: provider.userModel!.profile.name),
                        _ProfileTextWidget(
                          text1: 'Date of Birth',
                          text2: StaticValues.commonDateFormat.format(provider.userModel!.profile.dob),
                        ),
                        _ProfileTextWidget(
                          text1: 'Duration Since Birth',
                          text2: _getAgeString(provider.userModel!.profile.dob),
                        ),
                        _ProfileTextWidget(text1: 'My Tagline', text2: provider.userModel!.profile.myTagLine),
                        _ProfileTextWidget(
                          text1: 'What am I',
                          text2: provider.userModel!.profile.whatAmI,
                          style2: Ts.ts20W400(),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: context.percentWidth * 5),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('My Timeline', style: Ts.ts26W600(color: appColors.errorRed)),
                        const SizedBox(height: 4),
                        Expanded(child: TimeLineWidget(timelines: provider.userModel!.profile.timeline)),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
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
  final String text1;
  final String text2;
  final TextStyle? style2;
  const _ProfileTextWidget({required this.text1, required this.text2, this.style2});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(width: 190, child: Text(text1, style: Ts.ts20W600())),
          Padding(padding: const EdgeInsets.only(right: 6), child: Text(':', style: Ts.ts20W600())),
          Flexible(child: Text(text2, style: style2 ?? Ts.ts20W600())),
        ],
      ),
    );
  }
}
