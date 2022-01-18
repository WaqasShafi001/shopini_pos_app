// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopini_pos/style/appColors.dart';
import 'package:shopini_pos/termsAndConditionsScreen.dart';
import 'package:shopini_pos/widgets/contactWidget.dart';
import 'package:easy_localization/easy_localization.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({Key? key}) : super(key: key);

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
                            Get.back();
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
                          'Contact_us',
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
                Image.asset(
                  'assets/shopini_image.png',
                ),
                SizedBox(height: height * 0.00),
                ContactWidget(
                  titleText: tr('Address'),
                  descriptionText: 'FRPC + M4M, Basra, Iraq',
                  imagePath: 'assets/address.png',
                ),
                SizedBox(height: height * 0.035),
                ContactWidget(
                  titleText: tr('E-mail'),
                  descriptionText: 'help@shopini.com',
                  imagePath: 'assets/email.png',
                ),
                SizedBox(height: height * 0.035),
                ContactWidget(
                  titleText: tr('Helpline'),
                  descriptionText: '+964 77 2222 8474',
                  imagePath: 'assets/helpline.png',
                ),
                SizedBox(height: height * 0.08),
                InkWell(
                  onTap: () {
                    Get.to(TermsAndConditionsScreen());
                  },
                  child: Text(
                    'Terms_Conditions',
                    style: TextStyle(
                      fontSize: height * 0.021,
                      fontFamily: 'Poppins',
                      color: AppColors.whiteColor,
                    ),
                  ).tr(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
