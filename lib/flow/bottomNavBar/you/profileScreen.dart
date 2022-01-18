// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopini_pos/style/appColors.dart';
import 'package:shopini_pos/style/appTextStyles.dart';
import 'package:shopini_pos/widgets/mediumButton.dart';
import 'package:shopini_pos/widgets/textInputField.dart';
import 'package:easy_localization/easy_localization.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              children: [
                Container(
                  height: height * 0.05,
                  width: width,
                  color: Colors.transparent,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: AppColors.whiteColor,
                          ),
                        ),
                        SizedBox(
                          width: width * 0.015,
                        ),
                        Text(
                          'My_Profile',
                          style: TextStyle(
                            color: AppColors.whiteColor,
                            fontFamily: 'Poppins',
                            fontSize: height * 0.024,
                          ),
                        ).tr(),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: height * 0.01),
                CircleAvatar(
                  backgroundColor: AppColors.mainHeadingColor.withOpacity(0.2),
                  radius: width * 0.18,
                  child: Image.asset(
                    'assets/profile_picture.png',
                  ),
                ),
                SizedBox(height: height * 0.015),
                TextInputField(
                  titleText: tr('Full_Name'),
                  hintText: 'xxxxx',
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                ),
                SizedBox(height: height * 0.022),
                TextInputField(
                  titleText: tr('Phone_Number'),
                  hintText: 'xxxxx',
                  keyboardType: TextInputType.phone,
                  textInputAction: TextInputAction.next,
                ),
                SizedBox(height: height * 0.022),
                TextInputField(
                  titleText: tr('email'),
                  hintText: tr('email'),
                  keyboardType: TextInputType.phone,
                  textInputAction: TextInputAction.next,
                ),
                SizedBox(height: height * 0.022),
                TextInputField(
                  titleText: tr('City'),
                  hintText: 'xxxxxx',
                  keyboardType: TextInputType.phone,
                  textInputAction: TextInputAction.next,
                ),
                SizedBox(height: height * 0.055),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MediumButton(
                      height: height,
                      width: width,
                      onTap: () {},
                      text: tr('Accept'),
                      color: AppColors.blueColor,
                      textStyle: AppTextStyles.enText1,
                    ),
                    SizedBox(
                      width: width * 0.05,
                    ),
                    MediumButton(
                      height: height,
                      width: width,
                      onTap: () {},
                      text: tr('Cancel'),
                      color: AppColors.mainHeadingColor.withOpacity(0.3),
                      textStyle: AppTextStyles.enText1,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
