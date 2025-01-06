import 'dart:io';
import 'package:hostnstore_mobile/ui/theme/color.dart';
import 'package:hostnstore_mobile/ui/theme/style.dart';
import 'package:flutter/material.dart';

class OutLineTextformfiled extends StatelessWidget {
  final TextInputType keybordtype;
  final int maxLine;
  final bool isDisable;
  final String hintText;

  final Color background;

  final TextEditingController controller;
  final Function(String) onchange;
  final String? Function(String?) valid;
  const OutLineTextformfiled({
    this.hintText = "Text",
    super.key,
    required this.controller,
    this.keybordtype = TextInputType.text,
    this.maxLine = 1,
    this.background = AppColors.whiteGray,
    required this.onchange,
    required this.valid,
    this.isDisable = false,
  });

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return TextFormField(
      readOnly: isDisable,
      enabled: !isDisable,
      onChanged: onchange,
      controller: controller,
      validator: valid,
      maxLines: maxLine,
      cursorHeight: Platform.isIOS ? 16 : 18,
      cursorColor: AppColors.fontColorPrimary.withOpacity(0.8),
      keyboardType: keybordtype,
      style: AppStyle.fieldText,
      decoration: const InputDecoration()
          .applyDefaults(themeData.inputDecorationTheme)
          .copyWith(
            suffixIcon: const SizedBox(
              width: 0,
            ),
            label: Text(
              hintText,
              style: AppStyle.fieldText,
            ),
          ),
    );
  }
}
