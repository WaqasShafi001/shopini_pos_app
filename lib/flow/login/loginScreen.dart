// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopini_pos/controllers/loginController.dart';
import 'package:shopini_pos/flow/resetPassword/forgotPasswordScreen.dart';
import 'package:shopini_pos/style/appColors.dart';
import 'package:shopini_pos/widgets/customLoadingRive.dart';
import 'package:shopini_pos/widgets/customSnackBar.dart';
import 'package:shopini_pos/widgets/largButton.dart';
import 'package:shopini_pos/widgets/textInputField.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:shopini_pos/widgets/topBackButton.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;
    var loginController = Get.put(LoginController());

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/bg.png'),
              fit: BoxFit.fill,
            ),
          ),
          child: SafeArea(
            child: Obx(
              () => Stack(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TopBackButton(height: height, width: width),
                        SizedBox(height: height * 0.01),
                        Image.asset(
                          'assets/shopini_image.png',
                        ),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: width * 0.06),
                          child: Text(
                            'log_in',
                            style: TextStyle(
                                color: AppColors.mainHeadingColor,
                                fontSize: height * 0.024,
                                fontFamily: 'Poppins'),
                          ).tr(),
                        ),
                        SizedBox(height: height * 0.015),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: width * 0.06),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'To_Log_in_you_must_enter_your_email_and_password.',
                                style: TextStyle(
                                    color: AppColors.whiteColor,
                                    fontSize: height * 0.021,
                                    fontFamily: 'Poppins'),
                              ).tr(),
                              // Text(
                              //   'and_password.',
                              //   style: TextStyle(
                              //       color: AppColors.whiteColor,
                              //       fontSize: height * 0.021,
                              //       fontFamily: 'Poppins'),
                              // ).tr(),
                            ],
                          ),
                        ),
                        SizedBox(height: height * 0.03),
                        TextInputField(
                          titleText: tr('Email_Mobile_number'),
                          hintText: tr('email'),
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          textController: loginController.emailController,
                        ),
                        SizedBox(height: height * 0.02),
                        TextInputField(
                          titleText: tr('Password'),
                          hintText: tr('Password'),
                          isPasswwordField: true,
                          textController: loginController.passwordController,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: width * 0.06,
                              vertical: height * 0.015),
                          child: InkWell(
                            onTap: () {
                              Get.to(ForgotPassword());
                            },
                            child: Text(
                              'Forgot_Password?',
                              style: TextStyle(
                                color: AppColors.lightRedColor,
                                fontFamily: 'Poppins',
                                fontSize: height * 0.018,
                              ),
                            ).tr(),
                          ),
                        ),
                        SizedBox(height: height * 0.02),
                        LargeButton(
                          onTap: () {
                            if (loginController.emailController.text.isEmpty) {
                              customSnackbar(
                                title: tr('alert'),
                                messageText: tr('email_can_not_be_empty'),
                              );
                            } else if (!loginController
                                .emailController.text.isEmail) {
                              customSnackbar(
                                title: tr('alert'),
                                messageText: tr('email_is_not_valid'),
                              );
                            } else if (loginController
                                .passwordController.text.isEmpty) {
                              customSnackbar(
                                title: tr('alert'),
                                messageText: tr('password_can_not_be_empty'),
                              );
                            } else {
                              loginController.getLogin();
                            }

                            //
                          },
                          // onTap: () {
                          //   Get.to(BottomNavBar());
                          // },
                          titleText: tr('log_in'),
                        ),
                      ],
                    ),
                  ),
                  loginController.isLoading.value
                      ? CustomLoadingRive(height: height, width: width)
                      : SizedBox(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
