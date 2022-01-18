// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopini_pos/style/appColors.dart';

class TextInputField extends StatefulWidget {
  final String? titleText;
  final String? hintText;
  final String? initialText;
  final TextInputType? keyboardType;
  final bool isPasswwordField;
  final TextInputAction? textInputAction;
  final TextEditingController? textController;

  const TextInputField(
      {Key? key,
      this.titleText,
      this.hintText,
      this.initialText,
      this.keyboardType,
      this.isPasswwordField = false,
      this.textInputAction,
      this.textController})
      : super(key: key);

  @override
  State<TextInputField> createState() => _TextInputFieldState();
}

class _TextInputFieldState extends State<TextInputField> {
  bool isObsecure = true;
  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.06),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.titleText!,
            style: TextStyle(
              color: AppColors.whiteColor,
              fontSize: height * 0.019,
              fontFamily: 'Poppins',
            ),
          ),
          SizedBox(height: height * 0.01),
          Container(
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
                controller: widget.textController,
                cursorColor: AppColors.whiteColor,
                keyboardType: widget.keyboardType,
                obscureText: widget.isPasswwordField ? isObsecure : !isObsecure,
                textAlignVertical: TextAlignVertical.center,
                textInputAction: widget.textInputAction,
                style: TextStyle(
                  color: AppColors.whiteColor,
                  fontSize: height * 0.018,
                  fontFamily: 'Poppins',
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: widget.hintText,
                  hintStyle: TextStyle(
                    color: AppColors.whiteColor.withOpacity(0.5),
                    fontSize: height * 0.018,
                    fontFamily: 'Poppins',
                  ),
                  suffixIcon: widget.isPasswwordField
                      ? InkWell(
                          onTap: () {
                            setState(() {
                              isObsecure = !isObsecure;
                            });
                          },
                          child: Icon(
                            !isObsecure
                                ? Icons.visibility_off_outlined
                                : Icons.visibility,
                            color: AppColors.whiteColor,
                            size: height * 0.025,
                          ),
                        )
                      : SizedBox(),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: width * 0.04),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
