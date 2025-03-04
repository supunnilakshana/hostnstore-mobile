import 'dart:io';
import 'package:flutter/material.dart';
import 'package:hostnstore_mobile/ui/theme/color.dart';

class Leadingtextformfiled extends StatefulWidget {
  final TextInputType keybordtype;
  final int maxLine;
  final Widget leading;
  final bool isSuffex;
  final String hintText;
  final EdgeInsetsGeometry padding;
  final TextEditingController controller;
  final Function(String) onchange;
  final String? Function(String?) valid;
  const Leadingtextformfiled({
    this.hintText = "Text",
    super.key,
    this.keybordtype = TextInputType.text,
    this.maxLine = 1,
    this.padding = const EdgeInsets.all(10),
    required this.leading,
    this.isSuffex = false,
    required this.controller,
    required this.onchange,
    required this.valid,
  });

  @override
  State<Leadingtextformfiled> createState() => _LeadingtextformfiledState();
}

class _LeadingtextformfiledState extends State<Leadingtextformfiled> {
  late bool isEditText;
  @override
  void initState() {
    if (widget.isSuffex) {
      isEditText = false;
    } else {
      isEditText = true;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return TextFormField(
      onChanged: widget.onchange,
      controller: widget.controller,
      validator: widget.valid,
      maxLines: widget.maxLine,
      cursorHeight: Platform.isIOS ? 16 : 18,
      cursorColor: AppColors.fontColorPrimary.withOpacity(0.8),
      keyboardType: widget.keybordtype,
      decoration: InputDecoration(
        suffixIcon: widget.isSuffex
            ? InkWell(
                onTap: _changeStatus,
                child: const Icon(Icons.edit, color: AppColors.primary))
            : const SizedBox.shrink(),
        icon: widget.leading,
      )
          .applyDefaults(themeData.inputDecorationTheme)
          .copyWith(hintText: widget.hintText),
    );
  }

  void _changeStatus() {
    if (isEditText == true) {
      isEditText = false;
    } else {
      isEditText = true;
    }
    setState(() {});
  }
}
