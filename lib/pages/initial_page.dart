import 'package:flutter/material.dart';
import 'package:touch/forms/initial_form.dart';
import 'package:touch/painters/pages_painter.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  _InitialPageState createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: CustomPaint(
          painter: PagePainter(),
          child: InitialForm()
        )
    );
  }
}
