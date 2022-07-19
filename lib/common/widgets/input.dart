import 'package:flutter/material.dart';
import 'package:free_music/common/utils/utils.dart';
import 'package:free_music/common/values/values.dart';

Widget inputTextField({
  String hintText = '',
  double fontSize = 18,
}) {
  return Padding(
    padding: EdgeInsets.symmetric(
      horizontal: duSetHeight(36),
      vertical: duSetWidth(18),
    ),
    child: TextField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: AppColors.secondText,
          fontSize: duSetFontSize(fontSize),
        ),
        floatingLabelAlignment: FloatingLabelAlignment.center,
        alignLabelWithHint: true,
      ),
      textAlign: TextAlign.center,
      textAlignVertical: TextAlignVertical.bottom,
      enableInteractiveSelection: false,
    ),
  );
}
