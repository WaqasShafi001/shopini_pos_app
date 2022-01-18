// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopini_pos/controllers/passwordController.dart';
import 'package:shopini_pos/flow/resetPassword/resetPasswordScreen.dart';
import 'package:shopini_pos/style/appColors.dart';
import 'package:shopini_pos/widgets/customSnackBar.dart';
import 'package:shopini_pos/widgets/largButton.dart';
import 'package:shopini_pos/widgets/textInputField.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:shopini_pos/widgets/topBackButton.dart';
import '../../main.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var resetPasseordController = Get.put(PasswordController());
    var height = Get.height;
    var width = Get.width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TopBackButton(height: height, width: width),
                SizedBox(height: height * 0.01),
                Image.asset(
                  'assets/shopini_image.png',
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.06),
                  child: Text(
                    'Forgot_your_password?',
                    style: TextStyle(
                        color: AppColors.mainHeadingColor,
                        fontSize: height * 0.024,
                        fontFamily: 'Poppins'),
                  ).tr(),
                ),
                SizedBox(height: height * 0.02),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.06),
                  child: Text(
                    'Please_enter_your_email_address._you_will_receive_a_link_to_create_a_new_password_By_email.',
                    style: TextStyle(
                        color: AppColors.whiteColor,
                        fontSize: height * 0.021,
                        fontFamily: 'Poppins'),
                  ).tr(),
                ),
                SizedBox(height: height * 0.06),
                TextInputField(
                  textController: resetPasseordController.resetEmailController,
                  titleText: tr('Email_mobile_phone_number'),
                  hintText: tr('email'),
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.done,
                ),
                SizedBox(height: height * 0.04),
                LargeButton(
                  titleText: tr('Submit_a_new_password'),
                  onTap: () {
                    if (resetPasseordController
                            .resetEmailController.text.isEmpty ||
                        !resetPasseordController
                            .resetEmailController.text.isEmail) {
                      customSnackbar(
                        title: tr('error'),
                        messageText: tr('please_enter_a_valid_email'),
                      );
                    } else {
                      Get.to(ResetPasswordScreen());
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
