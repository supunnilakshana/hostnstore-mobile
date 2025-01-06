import 'dart:io';

import 'package:hostnstore_mobile/ui/theme/color.dart';
import 'package:hostnstore_mobile/ui/theme/style.dart';
import 'package:flutter/material.dart';

class SufexWidgetTextformfiled extends StatefulWidget {
  final double radius;
  final TextInputType? keybordtype;
  final bool isenable;
  final int maxLine;
  final String hintText;
  final Widget suffexWidget;
  final TextEditingController controller;
  final Function(String) onchange;
  final Iterable<String>? autofillHints;
  final String? Function(String?) valid;
  const SufexWidgetTextformfiled({
    this.hintText = "Text",
    super.key,
    this.isenable = true,
    this.radius = 15,
    this.keybordtype,
    this.maxLine = 1,
    required this.suffexWidget,
    required this.controller,
    required this.onchange,
    required this.valid,
    this.autofillHints,
  });

  @override
  State<SufexWidgetTextformfiled> createState() =>
      _SufexWidgetTextformfiledState();
}

class _SufexWidgetTextformfiledState extends State<SufexWidgetTextformfiled> {
  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return TextFormField(
      autofillHints: widget.autofillHints,
      readOnly: !widget.isenable,
      maxLines: widget.maxLine,
      onChanged: widget.onchange,
      controller: widget.controller,
      validator: widget.valid,
      cursorHeight: Platform.isIOS ? 16 : 18,
      cursorColor: AppColors.fontColorPrimary.withOpacity(0.8),
      keyboardType: widget.keybordtype,
      style: AppStyle.fieldText,
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        suffixIcon: widget.suffexWidget,
      ).applyDefaults(themeData.inputDecorationTheme).copyWith(
            hintText: widget.hintText,
          ),
    );
  }
}
