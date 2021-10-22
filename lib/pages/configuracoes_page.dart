import 'package:flutter/material.dart';
import 'package:touch/forms/configuracoes_form.dart';
import 'package:touch/forms/initial_form.dart';
import 'package:touch/forms/perfil_form.dart';
import 'package:touch/painters/login_painter.dart';
import 'package:touch/painters/white_painter.dart';

class ConfiguracoesPage extends StatefulWidget {
  const ConfiguracoesPage({Key? key}) : super(key: key);

  @override
  _ConfiguracoesPageState createState() => _ConfiguracoesPageState();
}

class _ConfiguracoesPageState extends State<ConfiguracoesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: CustomPaint(
          painter: WhitePainter(),
          child: ConfiguracoesForm()
      )
    );
  }
}
