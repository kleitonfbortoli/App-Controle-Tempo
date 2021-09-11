import 'package:flutter/cupertino.dart';
import 'package:path_drawing/path_drawing.dart';

class ClipperLogin extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.quadraticBezierTo(
        3/4 * size.width,
        40,
        size.width/2,
        20
    );
    path.quadraticBezierTo(
        1/4 * size.width,
        0,
        0,
        30
    );

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}