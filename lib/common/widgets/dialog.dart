import 'package:flutter/material.dart';
import 'package:free_music/common/utils/utils.dart';
import 'package:free_music/common/values/values.dart';

Widget noteDialog({String content = ''}) {
  return Container(
    width: duSetWidth(295),
    height: duSetHeight(92),
    alignment: Alignment.center,
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(16)),
      image: DecorationImage(
        image: AssetImage('assets/images/note.png'),
        fit: BoxFit.cover,
      ),
    ),
    child: Padding(
      padding: EdgeInsets.symmetric(
        horizontal: duSetWidth(46),
      ),
      child: Text(
        content,
        style: TextStyle(
          fontSize: duSetFontSize(14),
          height: duSetHeight(1.5),
          color: AppColors.primaryText,
        ),
        textAlign: TextAlign.center,
      ),
    ),
  );
}
