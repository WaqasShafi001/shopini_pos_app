// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopini_pos/controllers/logOutController.dart';
import 'package:shopini_pos/flow/bottomNavBar/offers/offersScreen.dart';
import 'package:shopini_pos/flow/contact_us/contact_us.dart';
import 'package:shopini_pos/main.dart';
import 'package:shopini_pos/style/appColors.dart';
import 'package:shopini_pos/style/appTextStyles.dart';
import 'package:shopini_pos/widgets/homeGridSingleItem.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:shopini_pos/widgets/languagePopUpMenu.dart';

import '../../summaryPointDetailScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;
    var logOutController = Get.put(LogOutController());

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
                  height: height * 0.06,
                  width: width,
                  margin: EdgeInsets.symmetric(horizontal: width * 0.04),
                  color: Colors.transparent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/menu_icon.png',
                            height: height * 0.02,
                          ),
                          SizedBox(width: width * 0.03),
                          Text(
                            'Shopini_Store',
                            style: TextStyle(
                              fontSize: height * 0.023,
                              fontFamily: 'Poppins',
                              color: AppColors.whiteColor,
                            ),
                          ).tr()
                        ],
                      ),
                      Row(
                        children: [
                          myPopMenu(
                            height: height,
                            width: width,
                          ),
                          SizedBox(width: width * 0.001),
                          Image.asset(
                            'assets/notification_icon.png',
                            height: height * 0.025,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.01),
                Container(
                  height: height * 0.2,
                  width: width * 0.9,
                  decoration: BoxDecoration(
                    color: AppColors.mainHeadingColor.withOpacity(0.3),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: !findLanguageController.isEnglishLocale.value
                            ? width * 0.025
                            : 0.0),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 5,
                          child: Image.asset(
                            'assets/home_cart_image.png',
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Padding(
                            padding: EdgeInsets.only(right: width * 0.04),
                            child: Image.asset(
                              'assets/text.png',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: height * 0.06),
                Container(
                  height: height * 0.55,
                  width: width,
                  color: Colors.transparent,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.06),
                    child: GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1.16,
                        crossAxisSpacing: 25,
                        mainAxisSpacing: 35,
                      ),
                      children: [
                        HomeGridOption(
                          assetPath: 'assets/offers_icon.png',
                          titleText: tr('Offers'),
                          onTap: () {
                            Get.to(OffersScreen());
                          },
                        ),
                        HomeGridOption(
                          assetPath: 'assets/points earned_icon.png',
                          titleText: tr('Points_Earned'),
                          onTap: () {
                            Get.to(SummaryPointDetails());
                          },
                        ),
                        HomeGridOption(
                          assetPath: 'assets/redeem gifts_icon.png',
                          titleText: tr('Redeem_Gifts'),
                          onTap: () {},
                        ),
                        HomeGridOption(
                          assetPath: 'assets/contact us_icon.png',
                          titleText: tr('Contact_us'),
                          onTap: () {
                            Get.to(ContactUsScreen());
                          },
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: InkWell(
                            onTap: () {
                              logOutController.getLogOut();
                            },
                            child: Text(
                              'LogOut',
                              style: AppTextStyles.enText1,
                            ).tr(),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
