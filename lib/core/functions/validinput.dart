import 'package:get/get.dart';

validInput(String val, int min, int max, String type) {
  if (type == "email") {
    if (GetUtils.isEmail(val)) {
      return "not valid email";
    }
  }
  if (type == "username") {
    if (GetUtils.isUsername(val)) {
      return "Not valid username";
    }
  }
  if (type == "phone") {
    if (GetUtils.isPhoneNumber(val)) {
      return "Not valid phone number";
    }
  }
  if (val.isEmpty) {
    return "can't be empty";
  }
  if (val.length < min) {
    return "can't be less than $min";
  }
  if (val.length > max) {
    return "can't be larger than $max";
  }
}
