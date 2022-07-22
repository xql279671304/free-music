import 'package:flutter/material.dart';
import 'package:free_music/common/utils/utils.dart';
import 'package:free_music/common/values/values.dart';

Widget customOutlineButton({
  required VoidCallback onPressed,
  String buttonText = '',
  double width = 295,
  double height = 50,
  double fontSize = 11,
}) {
  return Container(
    decoration: BoxDecoration(
      gradient: const LinearGradient(
        colors: [
          AppColors.secondElement,
          AppColors.primaryElement,
        ],
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
      ),
      borderRadius: BorderRadius.circular(duSetHeight(height)),
    ),
    child: OutlinedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        fixedSize: Size(duSetWidth(width), duSetHeight(height)),
        shape: const StadiumBorder(),
      ),
      onPressed: onPressed,
      child: Text(
        buttonText.toUpperCase(),
        style: TextStyle(
          color: AppColors.primaryBackground,
          fontSize: duSetFontSize(fontSize),
          letterSpacing: 1.5,
        ),
      ),
    ),
  );
}
