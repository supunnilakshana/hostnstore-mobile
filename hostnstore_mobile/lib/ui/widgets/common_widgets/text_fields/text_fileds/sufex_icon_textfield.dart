import 'dart:io';

import 'package:hostnstore_mobile/ui/theme/color.dart';
import 'package:hostnstore_mobile/ui/theme/style.dart';

import 'package:flutter/material.dart';

class SufexTextformfiled extends StatefulWidget {
  final double radius;
  final TextInputType? keybordtype;
  final bool isenable;
  final int maxLine;
  final String hintText;
  final IconData iconData;
  final TextCapitalization textCapitalization;
  final TextEditingController controller;
  final Function(String) onchange;
  final Iterable<String>? autofillHints;
  final String? Function(String?) valid;
  final Function()? onSuffixTap;
  const SufexTextformfiled({
    this.hintText = "Text",
    super.key,
    this.isenable = true,
    this.radius = 15,
    this.keybordtype,
    this.maxLine = 1,
    required this.iconData,
    required this.controller,
    required this.onchange,
    required this.valid,
    this.autofillHints,
    this.onSuffixTap,
    this.textCapitalization = TextCapitalization.none,
  });

  @override
  State<SufexTextformfiled> createState() => _SufexTextformfiledState();
}

class _SufexTextformfiledState extends State<SufexTextformfiled> {
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
      textCapitalization: widget.textCapitalization,
      cursorHeight: Platform.isIOS ? 16 : 18,
      cursorColor: AppColors.fontColorPrimary.withOpacity(0.8),
      keyboardType: widget.keybordtype,
      style: AppStyle.fieldText,
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        suffixIcon: InkWell(
          onTap: () {
            if (widget.onSuffixTap != null) {
              widget.onSuffixTap!();
            }
          },
          child: Icon(
            widget.iconData,
            color: AppColors.primaryLight,
          ),
        ),
      ).applyDefaults(themeData.inputDecorationTheme).copyWith(
            hintText: widget.hintText,
          ),
    );
  }
}
