import 'package:flutter/material.dart';
import 'package:touch/forms/conf_tema_form.dart';
import 'package:touch/forms/configuracoes_form.dart';
import 'package:touch/forms/initial_form.dart';
import 'package:touch/forms/perfil_form.dart';
import 'package:touch/painters/login_painter.dart';
import 'package:touch/painters/white_painter.dart';

class ConfTemaPage extends StatefulWidget {
  const ConfTemaPage({Key? key}) : super(key: key);

  @override
  _ConfTemaPageState createState() => _ConfTemaPageState();
}

class _ConfTemaPageState extends State<ConfTemaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: CustomPaint(
          painter: WhitePainter(),
          child: ConfTemaForm()
      )
    );
  }
}
