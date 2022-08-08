import 'package:flutter/material.dart';
import 'package:free_music/common/utils/utils.dart';
import 'package:free_music/common/values/values.dart';

class ArcBackground extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..isAntiAlias = true
      ..strokeWidth = 0.0
      ..color = AppColors.secondBackground
      ..invertColors = false;

    Path _path = Path();
    _path.moveTo(-size.width / 6, size.height - duSetHeight(200));
    _path.quadraticBezierTo(size.width / 2, size.height,
        size.width * (1 + 1 / 6), size.height - duSetHeight(200));
    canvas.drawPath(_path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
