// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:shopini_pos/style/appColors.dart';

class RewardBoxWidget extends StatelessWidget {
  const RewardBoxWidget({
    Key? key,
    required this.height,
    required this.width,
    required this.imgPath,
    required this.titleText,
    required this.boxColor,
    this.isBalance = false,
    required this.value, this.onTap,
  }) : super(key: key);

  final double height;
  final double width;
  final String imgPath;
  final String titleText;
  final Color boxColor;
  final bool isBalance;
  final String value;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            height: height * 0.18,
            width: width * 0.275,
            decoration: BoxDecoration(
              color: boxColor,
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  imgPath,
                  height: height * 0.1,
                ),
                Text(
                  titleText,
                  style: TextStyle(
                    color: AppColors.whiteColor,
                    fontFamily: 'Poppins',
                    fontSize: height * 0.018,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: height * 0.02),
          Container(
            height: height * 0.04,
            width: width * 0.2,
            decoration: BoxDecoration(
              color: AppColors.offersText,
              borderRadius: BorderRadius.all(
                Radius.circular(4),
              ),
            ),
            child: !isBalance
                ? Center(
                    child: Text(
                      value,
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: height * 0.02,
                      ),
                    ),
                  )
                : Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          value,
                          style: TextStyle(
                            color: Colors.black,
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
                                color: Colors.black,
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
                  ),
          ),
        ],
      ),
    );
  }
}
