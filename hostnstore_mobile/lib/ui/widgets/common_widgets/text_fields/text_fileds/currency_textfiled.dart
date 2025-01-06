import 'dart:io';

import 'package:hostnstore_mobile/ui/theme/color.dart';

import 'package:flutter/material.dart';
import 'package:hostnstore_mobile/ui/theme/style.dart';

class CurrencyTextformfiled extends StatelessWidget {
  final TextInputType keybordtype;
  final int maxLine;
  final bool isDisable;

  final String hintText;

  final Color background;

  final TextEditingController controller;
  final Function(String) onchange;
  final String currencySymbol;
  final String? Function(String?) valid;
  const CurrencyTextformfiled({
    this.hintText = "Text",
    super.key,
    required this.controller,
    this.keybordtype = TextInputType.number,
    this.maxLine = 1,
    this.background = AppColors.whiteGray,
    required this.onchange,
    required this.valid,
    this.isDisable = false,
    this.currencySymbol = '\$',
  });

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return TextFormField(
      onChanged: onchange,
      controller: controller,
      readOnly: isDisable,
      enabled: !isDisable,
      validator: valid,
      maxLines: maxLine,
      cursorHeight: Platform.isIOS ? 16 : 18,
      cursorColor: AppColors.fontColorPrimary.withOpacity(0.8),
      // not use keyboard type parameter reason is the TextType.number not support the decimal value in IOS
      keyboardType: const TextInputType.numberWithOptions(
        decimal: true,
        signed: true,
      ),

      style: AppStyle.fieldText,
      decoration: const InputDecoration()
          .applyDefaults(themeData.inputDecorationTheme)
          .copyWith(
            prefixIconConstraints: const BoxConstraints(
              minWidth: 5,
              minHeight: 5,
            ),
            prefixIcon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                currencySymbol,
                style: AppStyle.fieldText.copyWith(
                    color: AppColors.fontColorPrimary.withOpacity(0.8),
                    fontWeight: FontWeight.w500,
                    fontSize: 15),
              ),
            ),
            suffixIcon: const SizedBox(
              width: 0,
            ),
            hintText: hintText,
          ),
    );
  }
}
