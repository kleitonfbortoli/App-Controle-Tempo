import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:touch/components/button_primary.dart';
import 'package:touch/components/input_field.dart';
import 'package:touch/components/link_label.dart';
import 'package:touch/components/logo.dart';
import 'package:touch/components/page_title.dart';

class RecuperacaoSenhaForm extends StatelessWidget {
  const RecuperacaoSenhaForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    final emailController = TextEditingController();

    return Center(
        child: Column(
          children: <Widget>[
            SizedBox(
                width: width,
                height: height * .25,
                child: Center (
                  child: SizedBox(
                    width: width,
                    height: height * .15,
                    child: const TouchLogo(),
                  ),
                )
            ),
            SizedBox(
                width: width,
                height: height * .13,
                child: Column(
                  children: [
                    PageTitle(
                        text: 'Recuperar senha',
                        color: Colors.black.withOpacity(0.5),
                        font_size: 40,
                        fontWeight: FontWeight.normal
                    ),
                    PageTitle(
                        text: 'Preencha abaixo seu email, para recuperar a senha',
                        color: Colors.black.withOpacity(0.5),
                        font_size: 15,
                        fontWeight: FontWeight.normal
                    )
                  ],
                )
            ),
            SizedBox(
                width: width * .9,
                height: height * .1,
                child: Center(
                  child: InputField(
                      label: 'E-mail',
                      input_type: TextInputType.text,
                      controller: emailController,
                  ),
                )
            ),
            SizedBox(height: height * .14,),
            SizedBox(
                width: width * .8,
                height: height * .05,
                child: Center(
                    child: LinkLabel(
                        label: '< Voltar para o login',
                        function: () => {
                          Navigator.pushNamed(context, 'login')
                        },
                        color: Colors.blue,
                        size: 15
                    )
                )
            ),
            SizedBox(
                width: width * .8,
                height: height * .05,
                child: Center(
                    child: LinkLabel(
                        label: 'Criar cadastro >',
                        function: () => {
                          Navigator.pushNamed(context, 'create-count')
                        },
                        color: Colors.blue,
                        size: 15
                    )
                )
            ),
            SizedBox(height: height * .15,),
            SizedBox(
                width: width * .7,
                height: height * .07,
                child: ButtonPrimary(
                  label: 'Enviar',
                  showBorder: false,
                  callback: (){
                    // Navigator.of(context).pushReplacementNamed('create-count');\
                    // print('chamando');
                    // PessoaModel().getAll();
                    // new Request().showGenericSuccessMessage({'id':2});
                    Navigator.pushNamed(context, 'initial-page');

                  },
                )
            ),
          ],
        )
    );
  }
}
