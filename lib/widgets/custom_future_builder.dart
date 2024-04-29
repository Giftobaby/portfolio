// Created by: Christo Pananjickal, Created at: 29-04-2024 11:18 am

import 'package:flutter/material.dart';
import 'package:portfolio/models/api_models/status_enum.dart';
import 'package:portfolio/theme/colors.dart';
import 'package:portfolio/theme/text_styles.dart';
import 'package:portfolio/widgets/custom_progress_indicator.dart';

class CustomFutureBuilder extends StatelessWidget {
  final Status status;
  final Widget Function(BuildContext context) childBuilder;
  final Function() onRetryTap;
  final String errorMessage;
  const CustomFutureBuilder({
    super.key,
    required this.status,
    required this.childBuilder,
    required this.onRetryTap,
    required this.errorMessage,
  });

  @override
  Widget build(BuildContext context) {
    return status == Status.loading
        ? const Center(child: CustomProgressIndicator())
        : status == Status.success
            ? childBuilder(context)
            : status == Status.none
                ? const SizedBox()
                : Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(errorMessage, style: Ts.ts18W400(color: appColors.errorRed)),
                        const SizedBox(height: 12),
                        GestureDetector(
                          onTap: onRetryTap,
                          child: MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: Container(
                              decoration: BoxDecoration(
                                color: appColors.bgBlack2,
                                borderRadius: const BorderRadius.all(Radius.circular(6)),
                              ),
                              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 7),
                              child: Icon(
                                Icons.refresh,
                                color: appColors.errorRed,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
  }
}
