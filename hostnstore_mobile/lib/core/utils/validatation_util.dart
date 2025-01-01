import 'package:hostnstore_mobile/core/models/app_models/dropdown_item.dart';

class ValidatationUtil {
  static String? genaralvalid(String value, {required String genValidateMsg}) {
    if (value.isEmpty) {
      return genValidateMsg;
    }
    return null;
  }

  static String? signupPassword(String value,
      {required String genValidateMsg, required String specValidateMsg}) {
    if (value.isEmpty) {
      return genValidateMsg;
    } else {
      RegExp regex =
          RegExp(r'^(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*(),.?":{}|<>]).{8,}$');
      bool isMatch = regex.hasMatch(value);
      return isMatch ? null : specValidateMsg;
    }
  }

  static String? confirmPasswordvaild(String value, String password,
      {required String genValidateMsg, required String specValidateMsg}) {
    if (value.isEmpty || password.isEmpty) {
      return genValidateMsg;
    } else if (value != password) {
      return specValidateMsg;
    }
    return null;
  }

  static String? emailvaild(String email,
      {required String genValidateMsg,
      required String specValidateMsg,
      bool allowNull = false}) {
    bool emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email);
    if (email.isEmpty && !(allowNull)) {
      return genValidateMsg;
    } else if (emailValid == false && allowNull == false) {
      return specValidateMsg;
    }
    return null;
  }

  static String? mobileNumValid(String mobile,
      {required String genValidateMsg,
      required String specValidateMsg,
      bool allowNull = false}) {
    String pattern = r'^[0-9]*$';
    bool mobileValid = RegExp(pattern).hasMatch(mobile);
    if (mobile.isEmpty && !(allowNull)) {
      return genValidateMsg;
    } else if (mobileValid == false && allowNull == false) {
      return specValidateMsg;
    }
    return null;
  }

  static String? validateEmailOrMobile(String input,
      {required String genValidateMsg, required String specValidateMsg}) {
    String emailPattern = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
    String mobilePattern = r'^[0-9]{10}$';

    if (input.isEmpty) {
      return genValidateMsg;
    } else if (RegExp(emailPattern).hasMatch(input)) {
      // Valid email
      return null;
    } else if (RegExp(mobilePattern).hasMatch(input)) {
      // Valid 10-digit mobile number
      return null;
    } else {
      return specValidateMsg;
    }
  }

  static String? isNumeric(String val,
      {required String genValidateMsg, required String specValidateMsg}) {
    if (val.isEmpty) {
      return genValidateMsg;
    }
    if (double.tryParse(val) != null) {
      return null;
    } else {
      return specValidateMsg;
    }
  }

  static String? isNumericNullAllow(String val,
      {required String genValidateMsg}) {
    if (val.isEmpty) {
      return null;
    }
    if (double.tryParse(val) != null) {
      return null;
    } else {
      return genValidateMsg;
    }
  }

  static String? isIntNullAllow(String val, {required String genValidateMsg}) {
    if (val.isEmpty) {
      return null;
    }
    if (int.tryParse(val) != null) {
      return null;
    } else {
      return genValidateMsg;
    }
  }

  static String? dropdownvaild(DropDownItem? item, String validationMsg) {
    if (item == null) {
      return validationMsg;
    } else {
      return null;
    }
  }
}
