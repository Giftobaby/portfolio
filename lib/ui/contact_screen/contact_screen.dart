// Created by: Christo Pananjickal, Created at: 24-04-2024 04:14 pm

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio/providers/user_info_provider.dart';
import 'package:portfolio/theme/colors.dart';
import 'package:portfolio/theme/text_styles.dart';
import 'package:portfolio/widgets/custom_gesture_detector/hover_button_base.dart';
import 'package:provider/provider.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<UserInfoProvider>(
      builder: (context, provider, child) {
        return Center(
          child: Container(
            decoration: BoxDecoration(
              color: appColors.bgBlack2,
              borderRadius: const BorderRadius.all(Radius.circular(12)),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 60),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _TextWithCopyIcon(text: provider.userModel!.contact.emailId, icon: Icons.email_outlined),
                _TextWithCopyIcon(text: provider.userModel!.contact.phone, icon: Icons.phone_android),
                _TextWithCopyIcon(text: provider.userModel!.contact.address, icon: Icons.home),
                _TextWithCopyIcon(text: provider.userModel!.contact.postalCode, icon: Icons.contact_mail),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _TextWithCopyIcon extends StatelessWidget {
  final String text;
  final IconData icon;
  const _TextWithCopyIcon({required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: appColors.textBlue, size: 22),
          const SizedBox(width: 9),
          Text(text, style: Ts.ts18W600()),
          const SizedBox(width: 12),
          HoverButton(
            builder: (context, state) => MouseRegion(
              cursor: state.isHovering ? SystemMouseCursors.click : MouseCursor.defer,
              child: Icon(Icons.copy, color: state.isHovering ? appColors.text1Hover : appColors.textDefault),
            ),
            onTapUp: () => _copy(context),
          ),
        ],
      ),
    );
  }

  void _copy(BuildContext context) {
    Clipboard.setData(ClipboardData(text: text));
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: appColors.bgBlack,
        content: Row(
          children: [
            Container(
              decoration:
                  BoxDecoration(color: appColors.bgBlack2, borderRadius: const BorderRadius.all(Radius.circular(12))),
              padding: const EdgeInsets.all(12),
              child: Text('$text copied to clipboard', style: Ts.ts17W400(color: appColors.errorRed)),
            ),
            const Spacer(),
          ],
        ),
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 1),
      ),
    );
  }
}
