import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:touch/constants/app_colors.dart';

class LoginPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final height = size.height;
    final width = size.width;
    Paint paint = Paint();

    Path mainBackGround = Path();
    mainBackGround.addRect(Rect.fromLTRB(0, 0, width, height));
    paint.color = Colors.white;
    canvas.drawPath(mainBackGround, paint);
    paint.shader = const LinearGradient(
        colors: loginGradientColors,
        begin: Alignment.centerLeft,
        end: Alignment.centerRight
    ).createShader(Rect.fromLTRB(0, 0, width, height));

    Path nuvem1 = Path();
    nuvem1.lineTo(width * .36, 0);
    nuvem1.quadraticBezierTo(
        width * .38,
        height * .09,
        width * .2,
        height * .08
    );
    nuvem1.quadraticBezierTo(
        width * .13,
        height * .07,
        width * .1,
        height * .1
    );
    nuvem1.quadraticBezierTo(
        width * .06,
        height * .13,
        0,
        height * .13
    );
    canvas.drawPath(nuvem1, paint);

    Path nuvem2 = Path();
    nuvem2.moveTo(width, height * .35);
    nuvem2.quadraticBezierTo(
        width * .96,
        height * .35,
        width * .95,
        height * .33
    );
    nuvem2.quadraticBezierTo(
        width * .91,
        height * .28,
        width * .77,
        height * .29
    );
    nuvem2.quadraticBezierTo(
        width * .67,
        height * .30,
        width * .63,
        height * .34
    );
    nuvem2.quadraticBezierTo(
        width * .55,
        height * .42,
        width * .73,
        height * .46
    );
    nuvem2.quadraticBezierTo(
        width * .77,
        height * .47,
        width * .73,
        height * .5
    );
    nuvem2.quadraticBezierTo(
        width * .65,
        height * .56,
        width * .80,
        height * .57
    );
    nuvem2.quadraticBezierTo(
        width * .86,
        height * .57,
        width * .89,
        height * .55
    );
    nuvem2.quadraticBezierTo(
        width * .95,
        height * .52,
        width,
        height * .54
    );
    canvas.drawPath(nuvem2, paint);

    Path nuvem3 = Path();
    nuvem3.moveTo(0, height * .75);
    nuvem3.lineTo(0, height);
    nuvem3.lineTo(width, height);
    nuvem3.lineTo(width, height * .75 + 70);
    nuvem3.quadraticBezierTo(
        0.8 * size.width,
        height * .75,
        0.65 * size.width,
        height * .75 +50
    );
    nuvem3.quadraticBezierTo(
        0.55 * size.width,
        height * .75 +80,
        0.45 * size.width,
        height * .75 +60
    );
    nuvem3.quadraticBezierTo(
        0.20 * size.width,
        height * .75 +20,
        0,
        height * .75 +60
    );
    canvas.drawPath(nuvem3, paint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
  
}