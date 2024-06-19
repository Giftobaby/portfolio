import 'package:flutter/material.dart';
import 'package:portfolio/widgets/navigation_bar/navigation_bar.dart';

class MainHomeScreen extends StatefulWidget {
  final Widget child;

  const MainHomeScreen({super.key, required this.child});

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TopNavigationBar(),
        const SizedBox(width: 15),
        Expanded(child: widget.child),
        const SizedBox(width: 15),
      ],
    );
  }
}
