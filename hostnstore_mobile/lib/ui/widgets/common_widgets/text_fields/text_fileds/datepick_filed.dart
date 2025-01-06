import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hostnstore_mobile/ui/theme/color.dart';
import 'package:hostnstore_mobile/ui/theme/style.dart';
import 'package:intl/intl.dart';

class Datepickformfiled extends StatefulWidget {
  final double radius;
  final String hintText;
  final IconData iconData;
  final TextEditingController controller;
  final String? validMsg;
  final isOutilneFiled;
  final bool isDisable;
  final DateTime? initialDate;
  final bool
      isUpcomming; // show only  upcomming dates if it false show past dates
  final bool showAllDates; // show all dates and ignore upcomming or fasr filter

  const Datepickformfiled({
    this.hintText = "Select Date",
    Key? key,
    this.radius = 15,
    this.iconData = FontAwesomeIcons.calendar,
    required this.controller,
    this.validMsg,
    this.isOutilneFiled = false,
    this.isDisable = false,
    this.isUpcomming = false,
    this.showAllDates = false,
    this.initialDate,
  }) : super(key: key);

  @override
  State<Datepickformfiled> createState() => _DatepickformfiledState();
}

class _DatepickformfiledState extends State<Datepickformfiled> {
  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return GestureDetector(
      onTap: widget.isDisable
          ? null
          : () {
              showDatePicker(
                  context: context,
                  initialDate: widget.initialDate ?? DateTime.now(),
                  firstDate: widget.showAllDates
                      ? DateTime(1920)
                      : widget.isUpcomming
                          ? DateTime.now()
                          : DateTime(1920),
                  lastDate: widget.showAllDates
                      ? DateTime(2200)
                      : widget.isUpcomming
                          ? DateTime(2100)
                          : DateTime.now(),
                  initialEntryMode: DatePickerEntryMode.calendarOnly,
                  builder: (BuildContext context, Widget? child) {
                    return FittedBox(
                      child: Theme(
                        data: ThemeData(
                          // ignore: prefer_const_constructors
                          colorScheme: ColorScheme.light(
                            primary: AppColors.primary,
                          ),
                        ),
                        child: child!,
                      ),
                    );
                  }).then((value) {
                if (value != null) {
                  widget.controller.text =
                      DateFormat('dd-MM-yyyy').format(value);
                }
              });
            },
      child: Container(
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
            cursorColor: AppColors.fontColorPrimary.withOpacity(0.8),
            style: AppStyle.fieldText,
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
              suffixIcon: Icon(
                widget.iconData,
                color: AppColors.primary,
              ),
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
      ),
    );
  }
}
