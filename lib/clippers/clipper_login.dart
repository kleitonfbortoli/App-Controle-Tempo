import 'package:flutter/cupertino.dart';
import 'package:path_drawing/path_drawing.dart';

class ClipperLogin extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 70);
    path.quadraticBezierTo(
        0.8 * size.width,
        0,
        0.65 * size.width,
        50
    );
    path.quadraticBezierTo(
        0.55 * size.width,
        80,
        0.45 * size.width,
        60
    );
    path.quadraticBezierTo(
        0.20 * size.width,
        20,
        0,
        60
    );

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}