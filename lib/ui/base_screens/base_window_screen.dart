import 'package:flutter/material.dart';
import 'package:portfolio/theme/colors.dart';

class BaseWindowScreen extends StatelessWidget {
  final Widget child;
  const BaseWindowScreen({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: appColors.bgBlack,
        alignment: Alignment.center,
        child: child,
      ),
    );
  }
}
