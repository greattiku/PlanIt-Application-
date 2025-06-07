import 'package:get/get.dart';

class AuthController extends GetxController{
    var isPasswordObscured = true.obs;
    var isConfirmPasswordObscured = true.obs;
    var isPasswordMatch = false.obs;

  passwordToggleObscure(){
    isPasswordObscured.value = !isPasswordObscured.value;
  }

  confirmPasswordToggleObscure(){
    isConfirmPasswordObscured.value =!isConfirmPasswordObscured.value;
  }
  void validatePasswordMatch(String? value, String password) {
    if (value == password) {
      isPasswordMatch.value = true;
    } else {
      isPasswordMatch.value = false;
      }
  }

}