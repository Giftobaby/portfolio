// Created by: Christo Pananjickal, Created at: 30-04-2024 11:50 am

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:portfolio/models/user_models/education_model.dart';
import 'package:portfolio/theme/colors.dart';
import 'package:portfolio/theme/text_styles.dart';

class TimeLineWidget extends StatelessWidget {
  final List<TimelineModel> timelines;
  const TimeLineWidget({super.key, required this.timelines});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: timelines.length,
      padding: const EdgeInsets.only(top: 3),
      itemBuilder: (context, index) =>
          _TimeLine(timeline: timelines[index], isFirst: index == 0, isLast: index == timelines.length - 1),
    );
  }
}

class _TimeLine extends StatelessWidget {
  final TimelineModel timeline;
  final bool isFirst;
  final bool isLast;
  const _TimeLine({required this.timeline, required this.isFirst, required this.isLast});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _Line(height: 4, avoidMinHeight: true, transparent: isFirst),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 3),
                    child: Image.network(
                      timeline.iconUrl,
                      height: 18,
                      width: 18,
                      color: appColors.text1,
                      errorBuilder: (context, a, s) => Icon(Icons.image, color: appColors.text1, size: 20),
                    ),
                  ),
                  Flexible(child: _Line(avoidMinHeight: true, transparent: isLast)),
                ],
              ),
              Flexible(child: Padding(padding: const EdgeInsets.only(left: 4), child: _TextWidget(timeline: timeline))),
            ],
          ),
        ),
        if (!isLast) const _Line(),
      ],
    );
  }
}

class _Line extends StatelessWidget {
  final bool avoidMinHeight;
  final bool transparent;
  final double? height;
  const _Line({this.avoidMinHeight = false, this.transparent = false, this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: height,
      alignment: Alignment.center,
      child: Container(
        width: 1,
        constraints: avoidMinHeight ? null : const BoxConstraints(minHeight: 16, maxHeight: double.infinity),
        color: transparent ? null : appColors.text1Hover,
      ),
    );
  }
}

class _TextWidget extends StatelessWidget {
  final TimelineModel timeline;
  const _TextWidget({required this.timeline});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(timeline.roleOrDegree, style: Ts.ts20W400(color: appColors.textBlue)),
        Text(
          '${DateFormat('dd-MMM-yyyy').format(timeline.fromDate)} - ${timeline.toDate == null ? 'Current' : DateFormat('dd-MMM-yyyy').format(timeline.toDate!)}',
          style: Ts.ts17W400(fontStyle: FontStyle.italic, color: timeline.toDate == null ? appColors.yellow : null),
        ),
        Text(timeline.institutionName, style: Ts.ts17W400(fontStyle: FontStyle.italic)),
        Text(timeline.description, style: Ts.ts17W700(color: appColors.textDefault)),
      ],
    );
  }
}
