import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:touch/constants/app_colors.dart';

class PagePainter extends CustomPainter {
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
    nuvem2.moveTo(width, height * .19);
    nuvem2.quadraticBezierTo(
        width * .9,
        height * .18,
        width * .87,
        height * .22
    );
    nuvem2.quadraticBezierTo(
        width * .85,
        height * .24,
        width * .8,
        height * .23
    );
    nuvem2.quadraticBezierTo(
        width * .66,
        height * .21,
        width * .64,
        height * .28
    );
    nuvem2.quadraticBezierTo(
        width * .63,
        height * .32,
        width * .7,
        height * .34
    );
    nuvem2.quadraticBezierTo(
        width * .74,
        height * .36,
        width * .7,
        height * .37
    );
    nuvem2.quadraticBezierTo(
        width * .6,
        height * .4,
        width * .69,
        height * .45
    );
    nuvem2.quadraticBezierTo(
        width * .74,
        height * .47,
        width * .8,
        height * .44
    );
    nuvem2.quadraticBezierTo(
        width * .86,
        height * .41,
        width * .92,
        height * .44
    );
    nuvem2.quadraticBezierTo(
        width * .96,
        height * .47,
        width,
        height * .46
    );
    canvas.drawPath(nuvem2, paint);

    canvas.drawCircle(Offset(-10, height * .6), 80, paint);

    Path nuvem3 = Path();
    nuvem3.moveTo(width, height * .65);
    nuvem3.quadraticBezierTo(
        width * .9,
        height * .65,
        width * .9,
        height * .7
    );
    nuvem3.quadraticBezierTo(
        width * .9,
        height * .75,
        width * .8,
        height * .73
    );
    nuvem3.quadraticBezierTo(
        width * .7,
        height * .71,
        width * .65,
        height * .74
    );
    nuvem3.quadraticBezierTo(
        width * .59,
        height * .78,
        width * .65,
        height * .83
    );
    nuvem3.quadraticBezierTo(
        width * .7,
        height * .86,
        width * .77,
        height * .87
    );
    nuvem3.quadraticBezierTo(
        width * .85,
        height * .88,
        width * .7,
        height * .93
    );
    nuvem3.quadraticBezierTo(
        width * .6,
        height * .99,
        width * .8,
        height
    );

    nuvem3.lineTo(width, height);
    canvas.drawPath(nuvem3, paint);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
  
}