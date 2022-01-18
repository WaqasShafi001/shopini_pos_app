// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopini_pos/style/appColors.dart';
import 'package:shopini_pos/widgets/summaryCardWidget.dart';
import 'package:easy_localization/easy_localization.dart';

class SummaryPointDetails extends StatelessWidget {
  const SummaryPointDetails({Key? key}) : super(key: key);

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
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.05),
              child: Column(
                children: [
                  Container(
                    height: height * 0.05,
                    width: width,
                    color: Colors.transparent,
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
                          'my_summary_details',
                          style: TextStyle(
                            color: AppColors.whiteColor,
                            fontFamily: 'Poppins',
                            fontSize: height * 0.024,
                          ),
                        ).tr(),
                      ],
                    ),
                  ),
                  SizedBox(height: height * 0.03),
                  Container(
                    width: width,
                    decoration: BoxDecoration(
                      color: AppColors.mainHeadingColor.withOpacity(0.2),
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    child: Column(
                      children: [
                        SummaryCardWidget(height: height, width: width),
                        SummaryCardWidget(height: height, width: width),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
