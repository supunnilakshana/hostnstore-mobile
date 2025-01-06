import 'package:flutter/material.dart';
import 'package:hostnstore_mobile/ui/theme/color.dart';
import 'package:hostnstore_mobile/ui/theme/style.dart';

class AutoSearchTextField extends StatefulWidget {
  final double radius;
  final TextInputType? keyboardType;
  final bool isEnabled;
  final int maxLine;
  final String hintText;
  final IconData iconData;
  final TextEditingController controller;
  final Function(String) onChange;
  final Iterable<String>? autofillHints;
  final Function() clearFilter;

  const AutoSearchTextField({
    this.hintText = "Text",
    Key? key,
    this.isEnabled = true,
    this.radius = 15,
    this.keyboardType,
    this.maxLine = 1,
    this.iconData = Icons.search,
    required this.controller,
    required this.onChange,
    this.autofillHints,
    required this.clearFilter,
  }) : super(key: key);

  @override
  State<AutoSearchTextField> createState() => _AutoSearchTextFieldState();
}

class _AutoSearchTextFieldState extends State<AutoSearchTextField> {
  bool isTexthas = false;
  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return TextField(
      autofillHints: widget.autofillHints,
      readOnly: !widget.isEnabled,
      maxLines: widget.maxLine,
      onChanged: (val) {
        if (val != "") {
          isTexthas = true;
        } else {
          isTexthas = false;
        }
        setState(() {});
        widget.onChange(val);
      },
      controller: widget.controller,
      cursorHeight: 15,
      cursorColor: AppColors.fontColorPrimary.withOpacity(0.8),
      keyboardType: widget.keyboardType,
      style: AppStyle.fieldText,
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        suffixIcon: GestureDetector(
          onTap: () {
            if (isTexthas) {
              widget.controller.clear();
              isTexthas = false;
              setState(() {});
              widget.clearFilter();
            }
          },
          child: Icon(
            isTexthas ? Icons.close : widget.iconData,
            color: isTexthas ? AppColors.primary : AppColors.primaryLight,
          ),
        ),
        hintText: widget.hintText,
      ),
    );
  }
}
