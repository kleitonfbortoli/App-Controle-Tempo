import 'package:flutter/material.dart';
import 'package:touch/forms/atividade_form.dart';
import 'package:touch/painters/white_painter.dart';

class AtividadePage extends StatefulWidget {
  const AtividadePage({Key? key}) : super(key: key);

  @override
  _AtividadePageState createState() => _AtividadePageState();
}

class _AtividadePageState extends State<AtividadePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: CustomPaint(
          painter: WhitePainter(),
          child: AtividadeForm()
      )
    );
  }
}
