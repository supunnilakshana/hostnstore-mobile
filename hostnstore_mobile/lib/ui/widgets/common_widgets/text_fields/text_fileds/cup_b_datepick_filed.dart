import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hostnstore_mobile/ui/theme/color.dart';
import 'package:hostnstore_mobile/ui/theme/style.dart';

import 'package:intl/intl.dart';

class CupBdatePicker extends StatefulWidget {
  final double radius;
  final String hintText;
  final IconData iconData;
  final TextEditingController controller;
  final String? validMsg;
  final bool isOutilneFiled;
  final bool isDisable;
  final bool
      isUpcomming; // Show only upcoming dates if true; past dates if false
  final bool showAllDates; // Show all dates and ignore other filters

  const CupBdatePicker({
    this.hintText = "Select Date",
    super.key,
    this.radius = 15,
    this.iconData = FontAwesomeIcons.calendar,
    required this.controller,
    this.validMsg,
    this.isOutilneFiled = false,
    this.isDisable = false,
    this.isUpcomming = false,
    this.showAllDates = false,
  });

  @override
  State<CupBdatePicker> createState() => _CupBdatePickerState();
}

class _CupBdatePickerState extends State<CupBdatePicker> {
  void _showDatePicker(BuildContext context) {
    if (widget.isDisable) return;

    showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) {
        Size size = MediaQuery.of(context).size;
        return Padding(
          padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.04,
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            child: SafeArea(
              top: false,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: size.height * 0.3,
                    child: CupertinoDatePicker(
                      mode: CupertinoDatePickerMode.date,
                      initialDateTime: DateTime.now(),
                      minimumDate: widget.showAllDates
                          ? DateTime(1920)
                          : widget.isUpcomming
                              ? DateTime.now()
                              : DateTime(1920),
                      maximumDate: widget.showAllDates
                          ? DateTime(2200)
                          : widget.isUpcomming
                              ? DateTime(2100)
                              : DateTime.now(),
                      onDateTimeChanged: (DateTime value) {
                        widget.controller.text =
                            DateFormat('dd-MM-yyyy').format(value);
                      },
                    ),
                  ),
                  CupertinoButton(
                    child: Text(
                      'Done',
                      style: TextStyle(
                        color: AppColors.primary,
                        fontSize: 18,
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return GestureDetector(
      onTap: () => _showDatePicker(context),
      child: AbsorbPointer(
        child: TextFormField(
          readOnly: true,
          enabled: !widget.isDisable,
          controller: widget.controller,
          validator: (val) {
            if (widget.validMsg != null) {
              if (val!.isEmpty) {
                return widget.validMsg!;
              }
              return null;
            } else {
              return null;
            }
          },
          cursorHeight: Platform.isIOS ? 16 : 18,
          cursorColor: AppColors.primary.withOpacity(0.8),
          style: AppStyle.fieldText,
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
            suffixIcon: Icon(widget.iconData, color: AppColors.secondary),
          ).applyDefaults(themeData.inputDecorationTheme).copyWith(
                hintText: widget.isOutilneFiled ? null : widget.hintText,
                label: widget.isOutilneFiled
                    ? Text(
                        widget.hintText,
                        style: AppStyle.fieldText,
                      )
                    : null,
              ),
        ),
      ),
    );
  }
}
