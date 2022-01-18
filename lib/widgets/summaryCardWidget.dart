// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shopini_pos/main.dart';
import 'package:shopini_pos/style/appColors.dart';
import 'package:easy_localization/easy_localization.dart';

class SummaryCardWidget extends StatelessWidget {
  const SummaryCardWidget({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: height * 0.025),
        Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.04),
              child: Container(
                // color: Colors.green.withOpacity(0.5),
                height: height * 0.1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          '#3598',
                          style: TextStyle(
                            color: AppColors.mainHeadingColor,
                            fontFamily: 'Poppins',
                            fontSize: height * 0.024,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Text(
                          'reward_on_sale_invoice',
                          style: TextStyle(
                            color: AppColors.whiteColor,
                            fontFamily: 'Poppins',
                            fontSize: height * 0.022,
                          ),
                        ).tr(),
                      ],
                    ),
                    Text(
                      '12 Jan, 2021',
                      style: TextStyle(
                        color: AppColors.whiteColor.withOpacity(0.55),
                        fontFamily: 'Poppins',
                        fontSize: height * 0.020,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              right: 0,
              child: Container(
                width: width * 0.005,
                height: height * 0.08,
                color: AppColors.mainHeadingColor,
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(
            left: findLanguageController.isEnglishLocale.value
                ? width * 0.15
                : width * 0.02,
            right: findLanguageController.isEnglishLocale.value
                ? width * 0.02
                : width * 0.15,
            top: height * 0.01,
          ),
          child: Container(
            height: height * 0.075,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              border: Border.all(
                color: AppColors.mainHeadingColor,
                width: width * 0.0015,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.04),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/points.png',
                        height: height * 0.05,
                      ),
                      SizedBox(width: width * 0.03),
                      Text(
                        '57793',
                        style: TextStyle(
                          color: AppColors.whiteColor,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                          fontSize: height * 0.020,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: width * 0.001,
                      color: AppColors.mainHeadingColor,
                    ),
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/balance.png',
                        height: height * 0.05,
                      ),
                      SizedBox(width: width * 0.03),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '100',
                            style: TextStyle(
                              color: AppColors.whiteColor,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: height * 0.02,
                            ),
                          ),
                          SizedBox(width: height * 0.005),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'IQD',
                                style: TextStyle(
                                  color: AppColors.whiteColor,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold,
                                  fontSize: height * 0.014,
                                ),
                              ),
                              SizedBox(height: height * 0.01),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: height * 0.035),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.04),
          child: Container(
            color: AppColors.mainHeadingColor,
            width: width,
            height: height * 0.0005,
          ),
        ),
        SizedBox(height: height * 0.02),
      ],
    );
  }
}
