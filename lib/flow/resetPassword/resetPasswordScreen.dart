// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopini_pos/controllers/passwordController.dart';
import 'package:shopini_pos/style/appColors.dart';
import 'package:shopini_pos/style/appTextStyles.dart';
import 'package:shopini_pos/widgets/customLoadingRive.dart';
import 'package:shopini_pos/widgets/customSnackBar.dart';
import 'package:shopini_pos/widgets/largButton.dart';
import 'package:shopini_pos/widgets/textInputField.dart';
import 'package:shopini_pos/widgets/topBackButton.dart';
import 'package:easy_localization/easy_localization.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var findPasswordController = Get.find<PasswordController>();
    var height = Get.height;
    var width = Get.width;
    return Scaffold(
      body: Obx(
        () => Stack(
          children: [
            Container(
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
                          'Create_a_new_password',
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
                          'Your_new_password_must_be_different_from_Previously_used_password.',
                          style: TextStyle(
                              color: AppColors.whiteColor,
                              fontSize: height * 0.021,
                              fontFamily: 'Poppins'),
                        ).tr(),
                      ),
                      SizedBox(height: height * 0.035),
                      TextInputField(
                        textController:
                            findPasswordController.passwordController,
                        titleText: tr('Password'),
                        hintText: tr('password'),
                        isPasswwordField: true,
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                      ),
                      SizedBox(height: height * 0.022),
                      TextInputField(
                        textController:
                            findPasswordController.confirmPasswordController,
                        titleText: tr('Confirm_Password'),
                        hintText: tr('password'),
                        isPasswwordField: true,
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.done,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: width * 0.06, vertical: height * 0.015),
                        child: Text(
                          'Both_passwords_must_match',
                          style: TextStyle(
                            color: AppColors.lightRedColor,
                            fontFamily: 'Poppins',
                            fontSize: height * 0.018,
                          ),
                        ).tr(),
                      ),
                      SizedBox(height: height * 0.025),
                      LargeButton(
                        titleText: tr('Reset_Password'),
                        onTap: () {
                          if (findPasswordController
                                  .passwordController.text.isNotEmpty &&
                              findPasswordController
                                  .confirmPasswordController.text.isNotEmpty) {
                            if (findPasswordController
                                    .passwordController.text !=
                                findPasswordController
                                    .confirmPasswordController.text) {
                              customSnackbar(
                                title: tr('error'),
                                messageText: tr('both_passwords_must_match'),
                              );
                            } else {
                              findPasswordController.updatePassword();
                            }
                          } else {
                            customSnackbar(
                              title: tr('error'),
                              messageText: tr('please_enter_the_passwords'),
                            );
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            findPasswordController.isLoading.value
                ? CustomLoadingRive(height: height, width: width)
                : SizedBox(),
          ],
        ),
      ),
    );
  }
}
