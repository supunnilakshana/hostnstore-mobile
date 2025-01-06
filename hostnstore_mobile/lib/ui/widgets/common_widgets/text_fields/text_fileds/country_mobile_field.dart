// import 'dart:io';

// import 'package:country_code_picker/country_code_picker.dart';
// import 'package:propelpms/ui/theme/color.dart';
// import 'package:flutter/material.dart';

// class CountryMobileformfiled extends StatefulWidget {
//   final double radius;
//   final TextInputType keybordtype;
//   final bool isenable;
//   final int maxLine;
//   final String hintText;
//   final IconData iconData;
//   final TextEditingController controller;
//   final Function(String) onchange;
//   final String? Function(String?) valid;
//   const CountryMobileformfiled({
//     this.hintText = "Text",
//     Key? key,
//     this.keybordtype = TextInputType.text,
//     this.maxLine = 1,
//     required this.controller,
//     required this.onchange,
//     required this.valid,
//     this.radius = 15,
//     this.isenable = true,
//     required this.iconData,
//   }) : super(key: key);

//   @override
//   State<CountryMobileformfiled> createState() => _CountryMobileformfiledState();
// }

// class _CountryMobileformfiledState extends State<CountryMobileformfiled> {
//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final themeData = Theme.of(context);
//     return TextFormField(
//       readOnly: !widget.isenable,
//       controller: widget.controller,
//       validator: widget.valid,
//       onChanged: (v) {},
//       maxLines: widget.maxLine,
//       cursorHeight: Platform.isIOS ? 16 : 18,
//       cursorColor: AppColors.md_theme_light_font.withOpacity(0.8),
//       keyboardType: widget.keybordtype,
//       decoration: InputDecoration(
//         suffixIcon: Icon(
//           widget.iconData,
//           color: AppColors.appPrimaryLight,
//         ),
//         prefixIcon: CountryCodePicker(
//           onChanged: (CountryCode val) {
//             widget.onchange(val.dialCode!);
//           },
//           initialSelection: 'AU',
//           padding: EdgeInsets.zero,
//           showCountryOnly: false,
//           showOnlyCountryWhenClosed: false,
//           alignLeft: false,
//         ),
//       )
//           .applyDefaults(themeData.inputDecorationTheme)
//           .copyWith(hintText: widget.hintText),
//     );
//   }
// }
