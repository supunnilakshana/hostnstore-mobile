import 'dart:io';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hostnstore_mobile/ui/theme/color.dart';

class PrimaryPasswordformfiled extends StatefulWidget {
  final TextInputType keybordtype;
  final Iterable<String>? autofillHints;
  final int maxLine;
  final String hintText;
  final TextEditingController controller;
  final Widget? prefixIcon;
  final Function(String) onchange;
  final String? Function(String?) valid;
  const PrimaryPasswordformfiled({
    this.hintText = "Password",
    super.key,
    required this.controller,
    this.keybordtype = TextInputType.text,
    this.maxLine = 1,
    required this.onchange,
    this.prefixIcon,
    required this.valid,
    this.autofillHints,
  });

  @override
  State<PrimaryPasswordformfiled> createState() =>
      _PrimaryPasswordformfiledState();
}

class _PrimaryPasswordformfiledState extends State<PrimaryPasswordformfiled> {
  bool isHidepassword = true;
  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return TextFormField(
      autofillHints: widget.autofillHints,
      onChanged: widget.onchange,
      controller: widget.controller,
      validator: widget.valid,
      obscureText: isHidepassword,
      maxLines: widget.maxLine,
      cursorHeight: Platform.isIOS ? 16 : 18,
      cursorColor: AppColors.fontColorPrimary.withOpacity(0.8),
      keyboardType: widget.keybordtype,
      decoration: InputDecoration(
        prefixIcon: widget.prefixIcon,
        suffixIcon: InkWell(
            onTap: _viewPassword,
            child: Icon(
              isHidepassword ? FontAwesomeIcons.eyeSlash : FontAwesomeIcons.eye,
              color: AppColors.primaryLight,
            )),
      ).applyDefaults(themeData.inputDecorationTheme).copyWith(
            hintText: widget.hintText,
          ),
    );
  }

  void _viewPassword() {
    if (isHidepassword == true) {
      isHidepassword = false;
    } else {
      isHidepassword = true;
    }
    setState(() {});
  }
}
