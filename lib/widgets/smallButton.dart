// ignore_for_file: file_names

import 'package:flutter/material.dart';

class SmallButton extends StatelessWidget {
  final double? height;
  final double? width;
  final Color? color;
  final String? text;
  final TextStyle? textStyle;
  final Function()? onTap;
  const SmallButton(
      {Key? key,
      this.height,
      this.width,
      this.color,
      this.textStyle,
      this.text,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onTap,
      elevation: 3,
      child: Text(text!, style: textStyle),
      color: color,
      height: height! * 0.06,
      minWidth: width! * 0.32,
      // ignore: prefer_const_constructors
      shape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
    );
  }
}
