import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:touch/api/requests.dart';
import 'package:touch/models/pessoas_model.dart';
import 'package:touch/components/button_primary.dart';
import 'package:touch/components/input_field.dart';
import 'package:touch/components/logo.dart';
import 'package:touch/components/page_title.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: <Widget>[
          const TouchLogo(),
          Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(
                    bottom: 50.0
                ),
                child: const PageTitle(
                    text: 'Login',
                    color: Colors.black,
                    font_size: 40,
                )
              ),
              const Padding(
                padding: EdgeInsets.all(18.0),
                child: InputField(label: 'E-mail', input_type: TextInputType.text),
              ),
              const Padding(
                padding: EdgeInsets.all(18.0),
                child: InputField(label: 'Senha', input_type: TextInputType.text),
              ),

              Container(
                margin: const EdgeInsets.only(
                    top: 150.0
                ),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width / 1.5,
                    child: ButtonPrimary(
                      label: 'Entrar',
                      callback: (){
                        // Navigator.of(context).pushReplacementNamed('create-count');\
                        // print('chamando');
                        // PessoaModel().getAll();
                        new Request().showGenericSuccessMessage({'id':1});
                      },
                    )
                  ),
                ),
              ),
            ],
          ),
        ],
      )
    );
  }
}
