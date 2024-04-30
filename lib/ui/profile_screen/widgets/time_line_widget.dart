// Created by: Christo Pananjickal, Created at: 30-04-2024 11:50 am

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:portfolio/models/user_models/education_model.dart';
import 'package:portfolio/theme/colors.dart';
import 'package:portfolio/theme/text_styles.dart';

class TimeLineWidget extends StatelessWidget {
  final List<TimelineModel> timelines;
  const TimeLineWidget({super.key, required this.timelines});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: 600,
      child: ListView.builder(
        itemCount: timelines.length,
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) =>
            _TimeLine(timeline: timelines[index], isFirst: index == 0, isLast: index == timelines.length - 1),
      ),
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
                children: [
                  Flexible(child: _Line(avoidMinHeight: true, transparent: isFirst)),
                  Container(
                    width: 16,
                    decoration: BoxDecoration(color: appColors.text1Hover, shape: BoxShape.circle),
                    padding: const EdgeInsets.all(1),
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(color: appColors.bgBlack, shape: BoxShape.circle),
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
  const _Line({this.avoidMinHeight = false, this.transparent = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 16,
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
        Text(timeline.roleOrDegree, style: Ts.ts20W400()),
        Text(
          '${DateFormat('dd-MMM-yyyy').format(timeline.fromDate)} - ${timeline.toDate == null ? 'Current' : DateFormat('dd-MMM-yyyy').format(timeline.toDate!)}',
          style: Ts.ts14W400(fontStyle: FontStyle.italic),
        ),
        Text(timeline.institutionName, style: Ts.ts14W400(fontStyle: FontStyle.italic)),
        Text(timeline.description, style: Ts.ts14W400()),
      ],
    );
  }
}
