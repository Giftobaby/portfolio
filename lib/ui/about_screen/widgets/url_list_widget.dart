// Created by: Christo Pananjickal, Created at: 29-04-2024 02:14 pm

import 'package:flutter/material.dart';
import 'package:portfolio/models/user_models/url_model.dart';
import 'package:portfolio/theme/colors.dart';
import 'package:portfolio/theme/text_styles.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlListWidget extends StatelessWidget {
  final List<UrlModel> urls;
  const UrlListWidget({required this.urls, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        itemCount: urls.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: _ListTile(url: urls[index]),
        ),
      ),
    );
  }
}

class _ListTile extends StatelessWidget {
  final UrlModel url;
  const _ListTile({required this.url});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _openUrl,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: ClipOval(
                child: Image.network(
                  url.icon,
                  height: 26,
                  width: 26,
                  fit: BoxFit.contain,
                  errorBuilder: (context, e, s) {
                    return Icon(Icons.image, color: appColors.bgBlack2);
                  },
                ),
              ),
            ),
            Text(url.label, style: Ts.ts16W600(color: appColors.textBlue)),
          ],
        ),
      ),
    );
  }

  Future<void> _openUrl() async => await launchUrl(Uri.parse(url.url));
}
