// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopini_pos/flow/EarnedPointsScreen.dart';
import 'package:shopini_pos/flow/bottomNavBar/you/profileScreen.dart';
import 'package:shopini_pos/flow/summaryPointDetailScreen.dart';
import 'package:shopini_pos/style/appColors.dart';
import 'package:shopini_pos/widgets/SummaryBarCode.dart';
import 'package:shopini_pos/widgets/rewardBoxWidget.dart';
import 'package:easy_localization/easy_localization.dart';

class YouScreen extends StatelessWidget {
  const YouScreen({Key? key}) : super(key: key);

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
                            //Navigator.pop(context);
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
                          'Hello_User',
                          style: TextStyle(
                            color: AppColors.whiteColor,
                            fontFamily: 'Poppins',
                            fontSize: height * 0.024,
                          ),
                        ).tr(),
                        SizedBox(
                          width: width * 0.035,
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(ProfileScreen());
                          },
                          child: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            minRadius: height * 0.03,
                            maxRadius: height * 0.03,
                            foregroundImage: AssetImage(
                              'assets/profile_picture.png',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: height * 0.05),
                SummaryBarCode(
                  width: width,
                  height: height,
                  onTap: () {},
                ),
                SizedBox(height: height * 0.03),
                Container(
                  child: Image.asset(
                    'assets/QR.png',
                    height: height * 0.16,
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(height: height * 0.035),
                Container(
                  color: Colors.transparent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RewardBoxWidget(
                        height: height,
                        width: width,
                        imgPath: 'assets/reward.png',
                        titleText: tr('Rewards'),
                        boxColor: AppColors.rewardBoxColor,
                        value: '57793',
                        onTap: () {
                          Get.to(EarnedPointsScreen());
                        },
                      ),
                      RewardBoxWidget(
                        height: height,
                        width: width,
                        imgPath: 'assets/redeemed.png',
                        titleText: tr('Redeemed'),
                        boxColor: AppColors.redeemBoxColor,
                        value: '0',
                        onTap: () {},
                      ),
                      RewardBoxWidget(
                        height: height,
                        width: width,
                        imgPath: 'assets/balance.png',
                        titleText: tr('Balance'),
                        boxColor: AppColors.balanceBoxColor,
                        isBalance: true,
                        value: '100',
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.1),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
