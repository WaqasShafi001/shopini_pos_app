// ignore_for_file: file_names, empty_catches, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shopini_pos/flow/login/loginScreen.dart';
import 'package:shopini_pos/flow/resetPassword/changePasswordPostModel.dart';
import 'package:shopini_pos/flow/resetPassword/forgotPasswordScreen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:shopini_pos/widgets/customSnackBar.dart';

class PasswordController extends GetxController {
  TextEditingController resetEmailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  var isLoading = false.obs;

  Future updatePassword() async {
    isLoading.value = true;
    try {
      ChangePasswordPostModel postModel = ChangePasswordPostModel(
        email: resetEmailController.text,
        password: passwordController.text,
        password_confirmation: confirmPasswordController.text,
      );
      Map<String, String> headers = {
        'Content_Type': 'application/x-www-form-urlencoded'
      };
      var response = await http.post(
        Uri.parse('http://shopiniPOSD.shopinitools.com/api/changepassword'),
        headers: headers,
        body: postModel.toJson(),
      );

      if (response.statusCode == 200) {
        customSnackbar(
          title: tr('success'),
          messageText: tr('your_password_has_been_updated'),
        );

        Get.offAll(LoginScreen());
        customSnackbar(
          title: tr('success'),
          messageText: tr('your_password_has_been_updated'),
        );
      } else {
        Get.off(ForgotPassword());
        customSnackbar(
          title: tr('error'),
          messageText: tr('some_issue_occured'),
        );
      }
    } catch (e) {
      Get.snackbar(tr('error'), e.toString());
    }
  }
}
