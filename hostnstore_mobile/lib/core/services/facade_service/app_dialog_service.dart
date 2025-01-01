import 'package:flutter/material.dart';
import 'package:hostnstore_mobile/ui/theme/color.dart';

import 'package:hostnstore_mobile/ui/widgets/loadings/primary_loading.dart';
import 'package:stacked_services/stacked_services.dart';

class AppDialogService {
//   Future showInfo({
//     required String title,
//     required String msg,
//     DialogType type = DialogType.info,
//     String positiveButtonText = 'OK',
//     Function()? positiveCallback,
//     bool dismissible = true,
//     bool autoDismiss = false,
//   }) {
//     return showDialog(
//       context: StackedService.navigatorKey!.currentState!.context,
//       barrierDismissible: dismissible,
//       builder: (context) => Dialog(
//         elevation: 10,
//         alignment: Alignment.center,
//         insetPadding: EdgeInsets.symmetric(
//             horizontal: MediaQuery.of(context).size.width * 0.05),
//         shape: const RoundedRectangleBorder(
//             borderRadius: BorderRadius.all(Radius.circular(12))),
//         child: MsgDialog(
//           msg: msg,
//           onOK: positiveCallback,
//           title: title,
//           dialogType: type,
//         ),
//       ),
//     );
//   }

//   Future showSuccess({
//     required String title,
//     required String msg,
//     DialogType type = DialogType.success,
//     String positiveButtonText = 'OK',
//     Function()? positiveCallback,
//     bool dismissible = false,
//     bool autoDismiss = false,
//   }) {
//     return showDialog(
//       context: StackedService.navigatorKey!.currentState!.context,
//       barrierDismissible: dismissible,
//       builder: (context) => Dialog(
//         elevation: 10,
//         alignment: Alignment.center,
//         insetPadding: EdgeInsets.symmetric(
//             horizontal: MediaQuery.of(context).size.width * 0.05),
//         shape: const RoundedRectangleBorder(
//             borderRadius: BorderRadius.all(Radius.circular(12))),
//         child: MsgDialog(
//           msg: msg,
//           onOK: positiveCallback,
//           title: title,
//           dialogType: type,
//         ),
//       ),
//     );
//   }

//   Future showError({
//     required String title,
//     required String msg,
//     Function()? positiveCallback,
//     bool dismissible = true,
//     bool autoDismiss = false,
//   }) {
//     return showDialog(
//         context: StackedService.navigatorKey!.currentState!.context,
//         barrierDismissible: dismissible,
//         builder: (context) => Dialog(
//               elevation: 10,
//               alignment: Alignment.center,
//               insetPadding: EdgeInsets.symmetric(
//                   horizontal: MediaQuery.of(context).size.width * 0.05),
//               shape: const RoundedRectangleBorder(
//                   borderRadius: BorderRadius.all(Radius.circular(12))),
//               child: MsgDialog(
//                 title: title,
//                 dialogType: DialogType.error,
//                 onOK: positiveCallback,
//                 msg: msg,
//               ),
//             ));
//   }

//   Future showNoIntentDialog({
//     DialogType type = DialogType.error,
//     Function()? positiveCallback,
//     bool dismissible = false,
//     bool autoDismiss = false,
//   }) {
//     return showDialog(
//         context: StackedService.navigatorKey!.currentState!.context,
//         barrierDismissible: dismissible,
//         builder: (context) => Dialog(
//               elevation: 10,
//               alignment: Alignment.center,
//               insetPadding: EdgeInsets.symmetric(
//                   horizontal: MediaQuery.of(context).size.width * 0.05),
//               shape: const RoundedRectangleBorder(
//                   borderRadius: BorderRadius.all(Radius.circular(12))),
//               child: const NoInternetDialog(),
//             ));
//   }

  // Future showAppUpdateDialog({
  //   required Function() positiveCallback,
  //   bool dismissible = false,
  //   bool autoDismiss = false,
  //   bool isRequired = true,
  // }) {
  //   return showDialog(
  //       context: StackedService.navigatorKey!.currentState!.context,
  //       barrierDismissible: isRequired ? false : dismissible,
  //       builder: (context) => Dialog(
  //             elevation: 5,
  //             alignment: Alignment.center,
  //             shadowColor: Colors.black,
  //             surfaceTintColor: Colors.white,
  //             insetPadding: EdgeInsets.symmetric(
  //                 horizontal: MediaQuery.of(context).size.width * 0.05),
  //             shape: const RoundedRectangleBorder(
  //                 borderRadius: BorderRadius.all(Radius.circular(0))),
  //             child: AppUpdateDialog(
  //               onUpdateNow: positiveCallback,
  //               isForceUpdate: isRequired,
  //             ),
  //           ));
  // }

  Future showWidget({
    required Widget widget,
    bool dismissible = true,
    bool autoDismiss = false,
    double elevation = 10,
  }) {
    return showDialog(
        context: StackedService.navigatorKey!.currentState!.context,
        barrierDismissible: dismissible,
        builder: (context) => Dialog(
              elevation: elevation,
              alignment: Alignment.center,
              insetPadding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.03),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              child: widget,
            ));
  }

  Future showLoading({
    bool dismissible = true,
    bool autoDismiss = false,
  }) {
    return showDialog(
        context: StackedService.navigatorKey!.currentState!.context,
        barrierDismissible: dismissible,
        builder: (context) => const Dialog(
              elevation: 0,
              backgroundColor: Colors.transparent,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    PrimaryLoader(),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ));
  }

  // Future showConfirm({
  //   required String message,
  //   required String title,
  //   String positiveButtonText = 'Yes',
  //   String negativeButtonText = 'No',
  //   required Function() positiveCallback,
  //   required Function() negativeCallBack,
  //   DialogType type = DialogType.conf,
  //   bool dismissible = true,
  //   bool autoDismiss = false,
  // }) {
  //   return showDialog(
  //       context: StackedService.navigatorKey!.currentState!.context,
  //       barrierDismissible: dismissible,
  //       builder: (context) => Dialog(
  //           elevation: 10,
  //           alignment: Alignment.center,
  //           insetPadding: EdgeInsets.symmetric(
  //               horizontal: MediaQuery.of(context).size.width * 0.05),
  //           shape: const RoundedRectangleBorder(
  //               borderRadius: BorderRadius.all(Radius.circular(12))),
  //           child: ConfirmDialog(
  //             dialogType: type,
  //             onOkTap: () {
  //               positiveCallback();
  //             },
  //             onCancleTap: () {
  //               negativeCallBack();
  //             },
  //             tile: title,
  //             description: message,
  //             postiveBtnText: positiveButtonText,
  //             negativeBtnText: negativeButtonText,
  //           )));
  // } //AppColors.appPrimaryLight.withOpacity(0.8)

  // Future showWarning({
  //   required String message,
  //   required String title,
  //   String positiveButtonText = 'Yes',
  //   String negativeButtonText = 'No',
  //   required Function() positiveCallback,
  //   required Function() negativeCallBack,
  //   DialogType type = DialogType.warning,
  //   bool dismissible = true,
  //   bool autoDismiss = false,
  //   Color? positiveButtonColor,
  //   Color? negativeButtonColor,
  // }) {
  //   return showDialog(
  //       context: StackedService.navigatorKey!.currentState!.context,
  //       barrierDismissible: dismissible,
  //       builder: (context) => Dialog(
  //           elevation: 10,
  //           alignment: Alignment.center,
  //           insetPadding: EdgeInsets.symmetric(
  //               horizontal: MediaQuery.of(context).size.width * 0.05),
  //           shape: const RoundedRectangleBorder(
  //               borderRadius: BorderRadius.all(Radius.circular(12))),
  //           child: WarningDialog(
  //             dialogType: type,
  //             onOkTap: () {
  //               positiveCallback();
  //             },
  //             onCancleTap: () {
  //               negativeCallBack();
  //             },
  //             tile: title,
  //             description: message,
  //             postiveBtnColor:
  //                 positiveButtonColor ?? AppColors.red.withOpacity(0.85),
  //             negativeBtnColor:
  //                 negativeButtonColor ?? AppColors.appPrimary.withOpacity(0.9),
  //             postiveBtnText: positiveButtonText,
  //             negativeBtnText: negativeButtonText,
  //           )));
  // } //AppColors.appPrimaryLight.withOpacity(0.8)

  // ScaffoldFeatureController showSnackBar(
  //   String message, {
  //   Color? backgroundColor,
  //   TextStyle? style,
  //   TextAlign? textAlign,
  //   bool? softWrap,
  //   TextOverflow? overflow,
  //   int? maxLines,
  //   Duration duration = const Duration(milliseconds: 4000),
  // }) {
  //   return ScaffoldMessenger.of(
  //           StackedService.navigatorKey!.currentState!.context)
  //       .showSnackBar(
  //     SnackBar(
  //       backgroundColor: backgroundColor,
  //       content: Text(
  //         message,
  //         style: style,
  //         textAlign: textAlign,
  //         softWrap: softWrap,
  //         overflow: overflow,
  //         maxLines: maxLines,
  //       ),
  //       duration: duration,
  //     ),
  //   );
  // }

  // snackbars

  //error

  showSnackBarError(String message) {
    return ScaffoldMessenger.of(
            StackedService.navigatorKey!.currentState!.context)
        .showSnackBar(
      SnackBar(
        backgroundColor: AppColors.error,
        content: Text(
          message,
          style: const TextStyle(color: Colors.white),
        ),
        duration: const Duration(milliseconds: 4000),
      ),
    );
  }

  //success

  showSnackBarSuccess(String message) {
    return ScaffoldMessenger.of(
            StackedService.navigatorKey!.currentState!.context)
        .showSnackBar(
      SnackBar(
        backgroundColor: AppColors.secondary,
        content: Text(
          message,
          style: const TextStyle(color: Colors.white),
        ),
        duration: const Duration(milliseconds: 4000),
      ),
    );
  }
}
