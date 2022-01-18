// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopini_pos/style/appColors.dart';
import 'package:shopini_pos/widgets/largButton.dart';
import 'package:easy_localization/easy_localization.dart';

class EarnedPointsScreen extends StatelessWidget {
  const EarnedPointsScreen({Key? key}) : super(key: key);

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
            image: AssetImage('assets/bg_earned.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
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
                      'Earned_Points',
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
            Image.asset(
              'assets/trophy with confett.png',
            ),
            Text(
              'Congratulations',
              style: TextStyle(
                color: AppColors.congratulationsText,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                fontSize: height * 0.034,
              ),
            ).tr(),
            SizedBox(height: height * 0.01),
            Text.rich(
              TextSpan(
                text: tr('You_got'),
                style: TextStyle(
                  color: AppColors.whiteColor,
                  fontFamily: 'Poppins',
                  fontSize: height * 0.026,
                ),
                children: <InlineSpan>[
                  TextSpan(
                    text: '350 ',
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: height * 0.028,
                    ),
                  ),
                  TextSpan(
                    text: tr('points'),
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontFamily: 'Poppins',
                      fontSize: height * 0.026,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: height * 0.045),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.1),
              child: LargeButton(
                onTap: () {},
                titleText: tr('Redeem_points'),
              ),
            ),
            SizedBox(height: height * 0.045),
            Text(
              'Expiry_Date',
              style: TextStyle(
                color: AppColors.whiteColor.withOpacity(0.5),
                fontFamily: 'Poppins',
                fontSize: height * 0.025,
              ),
            ).tr(),
            SizedBox(height: height * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '12 Jan, 2021',
                  style: TextStyle(
                    color: AppColors.whiteColor,
                    fontFamily: 'Poppins',
                    fontSize: height * 0.02,
                  ),
                ),
                SizedBox(
                  width: width * 0.02,
                ),
                Container(
                  width: width * 0.002,
                  height: height * 0.025,
                  color: AppColors.mainHeadingColor,
                ),
                SizedBox(
                  width: width * 0.02,
                ),
                Text(
                  '16:20',
                  style: TextStyle(
                    color: AppColors.whiteColor,
                    fontFamily: 'Poppins',
                    fontSize: height * 0.02,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
