// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:shopini_pos/style/appColors.dart';
import 'package:easy_localization/easy_localization.dart';

class SummaryBarCode extends StatelessWidget {
  const SummaryBarCode({
    Key? key,
    required this.width,
    required this.height,
    this.onTap,
  }) : super(key: key);

  final double width;
  final double height;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        //height: height * 0.3,
        width: width,
        color: Colors.transparent,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.04),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Summary',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: height * 0.024,
                  color: AppColors.mainHeadingColor,
                ),
              ).tr(),
              SizedBox(height: height * 0.01),
              Container(
                width: width,
                //  height: height * 0.2,
                decoration: BoxDecoration(
                  color: AppColors.mainHeadingColor.withOpacity(0.18),
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: width * 0.045, vertical: height * 0.018),
                  child: Image.asset(
                    'assets/barcode1.png',
                  ),
                ),
              ),
              SizedBox(height: height * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Joined',
                        style: TextStyle(
                          color: AppColors.mainHeadingColor,
                          fontFamily: 'Poppins',
                          fontSize: height * 0.018,
                        ),
                      ).tr(),
                      Text(
                        '12 jan, 2021',
                        style: TextStyle(
                          color: AppColors.whiteColor,
                          fontFamily: 'Poppins',
                          fontSize: height * 0.018,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Expire',
                        style: TextStyle(
                          color: AppColors.mainHeadingColor,
                          fontFamily: 'Poppins',
                          fontSize: height * 0.018,
                        ),
                      ).tr(),
                      Text(
                        '12 jan, 2025',
                        style: TextStyle(
                          color: AppColors.whiteColor,
                          fontFamily: 'Poppins',
                          fontSize: height * 0.018,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
