// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopini_pos/style/appColors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:shopini_pos/style/appTextStyles.dart';
import 'package:shopini_pos/widgets/productWidget.dart';
import 'package:shopini_pos/widgets/searchBox.dart';

class OffersScreen extends StatefulWidget {
  const OffersScreen({Key? key}) : super(key: key);

  @override
  State<OffersScreen> createState() => _OffersScreenState();
}

class _OffersScreenState extends State<OffersScreen> {
  List<String?> productImageList = [
    'assets/airpods.png',
    'assets/coffee_maker.png',
    'assets/iphone.png',
    'assets/samsung.png',
  ];

  List<String?> productTitleList = [
    'Apple Airpods Wireless, white',
    'Coffee Grinder nice tool',
    'iPhone X',
    'Samsung Z',
  ];
  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;
    return Scaffold(
      body: InkWell(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());

        },
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/bg.png'),
              fit: BoxFit.fill,
            ),
          ),
          child: SafeArea(
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Container(
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
                            'Offers',
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
                ),
                SliverToBoxAdapter(child: SizedBox(height: height * 0.02)),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: width * 0.05,
                    ),
                    child: Container(
                      width: width,
                      color: Colors.transparent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Products',
                            style: TextStyle(
                                color: AppColors.mainHeadingColor,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                fontSize: height * 0.023),
                          ).tr(),
                          SizedBox(height: height * 0.008),
                          SearchBox(
                            hintText: tr('Search'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SliverToBoxAdapter(child: SizedBox(height: height * 0.02)),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: width * 0.062,
                    ),
                    child: Container(
                      color: Colors.transparent,
                      height: height * 0.04,
                      width: width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/list.png',
                                height: height * 0.018,
                              ),
                              SizedBox(
                                width: width * 0.05,
                              ),
                              Image.asset(
                                'assets/grid.png',
                                height: height * 0.018,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Filters',
                                style: TextStyle(
                                  color: AppColors.whiteColor,
                                  fontSize: height * 0.018,
                                  fontFamily: 'Poppins',
                                ),
                              ).tr(),
                              SizedBox(
                                width: width * 0.025,
                              ),
                              Text(
                                'Sort',
                                style: TextStyle(
                                  color: AppColors.whiteColor,
                                  fontSize: height * 0.018,
                                  fontFamily: 'Poppins',
                                ),
                              ).tr(),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SliverToBoxAdapter(child: SizedBox(height: height * 0.025)),
                SliverPadding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                  sliver: SliverGrid(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.6,
                      crossAxisSpacing: width * 0.04,
                      mainAxisSpacing: width * 0.045,
                    ),
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) => ProductWidget(
                        index: index,
                        width: width,
                        productImageList: productImageList,
                        productTitleList: productTitleList,
                        height: height,
                      ),
                      childCount: 4,
                    ),
                  ),
                ),
                SliverToBoxAdapter(child: SizedBox(height: height * 0.1)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
