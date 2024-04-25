// Created by: Christo Pananjickal, Created at: 24-04-2024 01:10 pm

import 'package:flutter/material.dart';
import 'package:portfolio/theme/colors.dart';
import 'package:portfolio/widgets/custom_tool_tip.dart';
import 'hover_button_base.dart';

class HoverGD extends StatefulWidget {
  final Function()? onTap;
  final Function()? onLongTap;
  final Future<void> Function()? onLongTapping;
  final Function()? onHover;
  final Widget child;
  final Color? hoverColor;
  final Color? clickColor;
  final bool clickCursor;
  final BorderRadiusGeometry? borderRadius;
  final BoxShape shape;
  final String? tooltip;
  final Duration longPressDuration;
  final FocusNode? focusNode;
  const HoverGD({
    super.key,
    required this.onTap,
    this.onLongTap,
    this.onLongTapping,
    required this.child,
    this.onHover,
    this.hoverColor,
    this.clickColor,
    this.borderRadius,
    this.tooltip,
    this.shape = BoxShape.rectangle,
    this.clickCursor = true,
    this.longPressDuration = const Duration(milliseconds: 50),
    this.focusNode,
  });

  @override
  State<HoverGD> createState() => _HoverGDState();
}

class _HoverGDState extends State<HoverGD> {
  bool pressing = false;

  Future<void> _longPressing() async {
    while (pressing) {
      await widget.onLongTapping?.call();
      await Future.delayed(widget.longPressDuration);
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomTooltip(
      message: widget.tooltip ?? '',
      child: HoverButton(
        onPressed: widget.onTap,
        onLongPress: widget.onLongTap,
        onLongPressStart: () => {pressing = true, _longPressing()},
        onLongPressEnd: () => pressing = false,
        focusNode: widget.focusNode,
        builder: (context, state) {
          widget.onHover?.call();
          return Container(
            foregroundDecoration: BoxDecoration(
              borderRadius: widget.borderRadius,
              shape: widget.shape,
              color: state.isPressing
                  ? widget.clickColor ?? appColors.defaultHoverClickColor
                  : state.isHovering
                      ? widget.hoverColor ?? appColors.defaultHoverClickColor
                      : Colors.transparent,
            ),
            child: widget.child,
          );
        },
        cursor: widget.clickCursor && widget.onTap != null ? SystemMouseCursors.click : null,
      ),
    );
  }
}
