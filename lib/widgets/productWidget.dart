
// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shopini_pos/style/appColors.dart';
import 'package:shopini_pos/style/appTextStyles.dart';
import 'package:easy_localization/easy_localization.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({
    Key? key,
    required this.width,
    required this.productImageList,
    required this.productTitleList,
    required this.height,
    this.index,
  }) : super(key: key);

  final double width;
  final List<String?> productImageList;
  final List<String?> productTitleList;
  final double height;
  final int? index;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.mainHeadingColor.withOpacity(0.2),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(12),
          bottomRight: Radius.circular(12),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Flexible(
            flex: 6,
            child: Container(
              color: AppColors.whiteColor,
              width: width,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  productImageList[index!]!,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 4,
            child: Container(
              color: Colors.transparent,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.06),
                    child: Text(
                      productTitleList[index!]!,
                      textAlign: TextAlign.center,
                      style: AppTextStyles.enText1,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.005,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$165',
                          style: TextStyle(
                              color: AppColors.lightRedColor.withOpacity(0.6),
                              fontSize: height * 0.0185),
                        ),
                        Text(
                          '10%_offer',
                          style: TextStyle(
                              color: AppColors.mainHeadingColor,
                              fontSize: height * 0.019),
                        ).tr()
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                    child: Container(
                      height: height * 0.0003,
                      color: AppColors.mainHeadingColor,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Bonus_points',
                        style: TextStyle(
                            color: AppColors.offersText,
                            fontSize: height * 0.017),
                      ).tr(),
                      Row(
                        children: [
                          Text(
                            '500',
                            style: TextStyle(
                                color: AppColors.offersText,
                                fontSize: height * 0.02),
                          ),
                          Column(
                            children: [
                              Image.asset(
                                'assets/points_small.png',
                                height: height * 0.021,
                              ),
                              SizedBox(
                                height: height * 0.012,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
