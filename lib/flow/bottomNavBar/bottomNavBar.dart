// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields
import 'dart:async';
import 'dart:collection';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:shopini_pos/controllers/bottomBarController.dart';
import 'package:shopini_pos/flow/bottomNavBar/offers/offersScreen.dart';
import 'package:shopini_pos/style/appColors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'home/homeScreen.dart';
import 'you/youScreen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  var navbarController = Get.put(BottomBarController());
  int currentIndex = 0;

  PageController? pageController;
  List<Widget> lisfOfWidgets = [
    HomeScreen(),
    OffersScreen(),
    YouScreen(),
  ];

  @override
  void initState() {
    pageController = PageController(initialPage: currentIndex);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            itemBuilder: (c, index) => lisfOfWidgets[index],
            controller: pageController,
            itemCount: lisfOfWidgets.length,
            physics: NeverScrollableScrollPhysics(),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              child: Container(
                height: height * 0.080,
                decoration: BoxDecoration(
                    color: AppColors.mainHeadingColor.withOpacity(0.2),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    )),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.mainHeadingColor.withOpacity(0.2),
                    ),
                    child: Obx(
                      () => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(),
                          Container(
                            color: Colors.transparent,
                            width: width * 0.2,
                            child: InkWell(
                              onTap: () {
                                navbarController.isHome.value = true;
                                navbarController.isOffers.value = false;
                                navbarController.isYou.value = false;
                                if (pageController!.hasClients) {
                                  pageController!.animateToPage(0,
                                      duration: Duration(milliseconds: 1),
                                      curve: Curves.easeIn);
                                }
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/home_icon.png',
                                    height: height * 0.03,
                                    color: navbarController.isHome.value
                                        ? AppColors.whiteColor
                                        : AppColors.mainHeadingColor,
                                  ),
                                  SizedBox(height: height * 0.006),
                                  Text(
                                    'Home',
                                    style: TextStyle(
                                      color: navbarController.isHome.value
                                          ? AppColors.whiteColor
                                          : AppColors.mainHeadingColor,
                                      fontSize: height * 0.017,
                                    ),
                                  ).tr(),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            color: Colors.transparent,
                            width: width * 0.2,
                            child: InkWell(
                              onTap: () {
                                navbarController.isHome.value = false;
                                navbarController.isOffers.value = true;
                                navbarController.isYou.value = false;
                                if (pageController!.hasClients) {
                                  pageController!.animateToPage(1,
                                      duration: Duration(milliseconds: 1),
                                      curve: Curves.easeIn);
                                }
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/offers_on_icon.png',
                                    height: height * 0.033,
                                    color: navbarController.isOffers.value
                                        ? AppColors.whiteColor
                                        : AppColors.mainHeadingColor,
                                  ),
                                  SizedBox(height: height * 0.006),
                                  Text(
                                    'Offers',
                                    style: TextStyle(
                                      color: navbarController.isOffers.value
                                          ? AppColors.whiteColor
                                          : AppColors.mainHeadingColor,
                                      fontSize: height * 0.017,
                                    ),
                                  ).tr()
                                ],
                              ),
                            ),
                          ),
                          Container(
                            color: Colors.transparent,
                            width: width * 0.2,
                            child: InkWell(
                              onTap: () {
                                navbarController.isHome.value = false;
                                navbarController.isOffers.value = false;
                                navbarController.isYou.value = true;
                                if (pageController!.hasClients) {
                                  pageController!.animateToPage(2,
                                      duration: Duration(milliseconds: 1),
                                      curve: Curves.easeIn);
                                }
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/you_on_icon.png',
                                    height: height * 0.033,
                                    color: navbarController.isYou.value
                                        ? AppColors.whiteColor
                                        : AppColors.mainHeadingColor,
                                  ),
                                  SizedBox(height: height * 0.006),
                                  Text(
                                    'You',
                                    style: TextStyle(
                                      color: navbarController.isYou.value
                                          ? AppColors.whiteColor
                                          : AppColors.mainHeadingColor,
                                      fontSize: height * 0.017,
                                    ),
                                  ).tr()
                                ],
                              ),
                            ),
                          ),
                          SizedBox(),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
