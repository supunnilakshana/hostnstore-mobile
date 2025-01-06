import 'dart:io';

import 'package:flutter/services.dart';
import 'package:hostnstore_mobile/ui/theme/color.dart';

import 'package:flutter/material.dart';
import 'package:hostnstore_mobile/ui/theme/style.dart';

class Primarytextformfiled extends StatelessWidget {
  final TextInputType keybordtype;
  final int maxLine;
  final bool isDisable;

  final String hintText;

  final Color background;
  final List<TextInputFormatter>? inputFormatters;

  final TextEditingController controller;
  final Function(String) onchange;
  final String? Function(String?) valid;
  const Primarytextformfiled({
    this.hintText = "Text",
    super.key,
    required this.controller,
    this.keybordtype = TextInputType.text,
    this.maxLine = 1,
    this.background = AppColors.whiteGray,
    required this.onchange,
    required this.valid,
    this.isDisable = false,
    this.inputFormatters,
  });

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return TextFormField(
      inputFormatters: inputFormatters,
      onChanged: onchange,
      controller: controller,
      readOnly: isDisable,
      enabled: !isDisable,
      validator: valid,
      maxLines: maxLine,
      cursorHeight: Platform.isIOS ? 16 : 18,
      cursorColor: AppColors.fontColorPrimary.withOpacity(0.8),
      keyboardType: keybordtype == TextInputType.number
          ? const TextInputType.numberWithOptions(
              decimal: true,
              signed: true,
            )
          : keybordtype,
      style: AppStyle.fieldText,
      decoration: const InputDecoration()
          .applyDefaults(themeData.inputDecorationTheme)
          .copyWith(
            suffixIcon: const SizedBox(
              width: 0,
            ),
            hintText: hintText,
          ),
    );
  }
}
