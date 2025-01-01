import 'package:flutter/material.dart';
import 'package:hostnstore_mobile/ui/theme/color.dart';

class ErrorView extends StatelessWidget {
  final dynamic exception;
  final Function() reLoad;
  const ErrorView({super.key, required this.exception, required this.reLoad});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.all(18),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Text(
          //   'Oops! Something went wrong.',
          //   textAlign: TextAlign.center,
          //   style: TextStyle(
          //     color: AppColors.fontColorPrimary,
          //     fontWeight: FontWeight.w700,
          //     fontSize: 20,
          //   ),
          // ),
          // SizedBox(height: 10),
          // Text(
          //   'Error:',
          //   textAlign: TextAlign.center,
          //   style: TextStyle(
          //       fontSize: 16,
          //       fontWeight: FontWeight.w400,
          //       color: AppColors.primary),
          // ),
          // Text(
          //   '$exception',
          //   textAlign: TextAlign.center,
          //   style: TextStyle(
          //       fontSize: 16,
          //       fontWeight: FontWeight.w400,
          //       color: AppColors.primary),
          // ),

          // SizedBox(height: 10),
          // InkWell(
          //   onTap: reLoad,
          //   child: Container(
          //     decoration: BoxDecoration(
          //       color: Colors.transparent,
          //       border: Border.all(color: AppColors.primary, width: 1.5.w),
          //     ),
          //     width: 260.w,
          //     height: 45.h,
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [
          //         Text(
          //           'Reload',
          //           style: TextStyle(
          //             color: AppColors.primary,
          //             fontSize: 16.sp,
          //             fontWeight: FontWeight.w700,
          //           ),
          //         ),
          //         SizedBox(width: 5.w),
          //         Icon(
          //           Icons.refresh,
          //           color: AppColors.primary,
          //           size: 20.sp,
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
