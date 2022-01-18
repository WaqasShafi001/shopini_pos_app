// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopini_pos/style/appColors.dart';

class SearchBox extends StatelessWidget {
  final String? titleText;
  final String? hintText;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final TextEditingController? textController;

  const SearchBox(
      {Key? key,
      this.titleText,
      this.hintText,
      this.keyboardType,
      this.textInputAction,
      this.textController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;
    return Container(
      height: height * 0.065,
      width: width * 0.9,
      decoration: BoxDecoration(
        color: AppColors.mainHeadingColor.withOpacity(0.3),
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
        boxShadow: [
          BoxShadow(
              offset: Offset(0, 1),
              color: Colors.black12,
              blurRadius: 0.5,
              spreadRadius: 0.5),
          BoxShadow(
              offset: Offset(0, -1),
              color: Colors.black12,
              blurRadius: 0.5,
              spreadRadius: 0.5),
        ],
      ),
      child: Center(
        child: TextFormField(
          showCursor: true,
          controller: textController,
          cursorColor: AppColors.whiteColor,
          keyboardType: keyboardType,
          textAlignVertical: TextAlignVertical.center,
          textInputAction: textInputAction,
          style: TextStyle(
            color: AppColors.whiteColor,
            fontSize: height * 0.018,
            fontFamily: 'Poppins',
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(Icons.search,
                color: AppColors.whiteColor.withOpacity(0.4)),
            hintText: hintText,
            hintStyle: TextStyle(
              color: AppColors.whiteColor.withOpacity(0.5),
              fontSize: height * 0.018,
              fontFamily: 'Poppins',
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: width * 0.04),
          ),
        ),
      ),
    );
  }
}
