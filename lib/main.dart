import 'package:flutter/material.dart';
import 'package:touch/pages/Atividades_page.dart';
import 'package:touch/pages/conf_tema_page.dart';
import 'package:touch/pages/configuracoes_page.dart';
import 'package:touch/pages/criar_conta_page.dart';
import 'package:touch/pages/initial_page.dart';
import 'package:touch/pages/perfil_page.dart';
import 'package:touch/pages/recuperacao_senha_page.dart';
import 'package:touch/pages/test_page.dart';

import 'pages/login_page.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Touch',
      navigatorKey: navigatorKey,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        fontFamily: 'Montserrat',
        backgroundColor: Colors.white,
      ),
      initialRoute: 'login',
      routes: {
        'login': (context) => const LoginPage(),
        'create-count': (context) => const CriarContaPage(),
        'reset-pass': (context) => const RecuperacaoSenhaPage(),
        'teste-page': (context) => const TestPage(),
        'initial-page': (context) => const InitialPage(),
        'atividades-page': (context) => const AtividadesPage(),
        'perfil-page' : (context) => const PerfilPage(),
        'configuration-page' : (context) => const ConfiguracoesPage(),
        'tema-page' : (context) => const ConfTemaPage(),
      },
    );
  }
}