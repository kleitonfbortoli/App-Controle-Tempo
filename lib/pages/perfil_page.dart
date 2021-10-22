import 'package:flutter/material.dart';
import 'package:touch/forms/initial_form.dart';
import 'package:touch/forms/perfil_form.dart';
import 'package:touch/painters/login_painter.dart';
import 'package:touch/painters/white_painter.dart';

class PerfilPage extends StatefulWidget {
    const PerfilPage({Key? key}) : super(key: key);

    @override
    _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<PerfilPage> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
                resizeToAvoidBottomInset: false,
        body: CustomPaint(
        painter: WhitePainter(),
        child: PerfilForm()
        )
        );
    }
}
