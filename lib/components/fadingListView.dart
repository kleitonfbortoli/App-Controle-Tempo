import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FadingListView extends StatelessWidget{
  final ListView children;
  const FadingListView({Key? key, required this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: ShaderMask(
          shaderCallback: (Rect rect) {
            return LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.blue, Colors.transparent, Colors.transparent, Colors.blue],
              stops: [0.0, 0.03, 0.97, 1.0], // 10% purple, 80% transparent, 10% purple
            ).createShader(rect);
          },
          blendMode: BlendMode.dstOut,
          child: children,
          ),
        ),
    );
  }
}