import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:touch/api/requests.dart';
import 'package:touch/components/button_primary.dart';
import 'package:touch/components/page_title.dart';
import 'package:touch/components/profile_image.dart';
import 'package:touch/components/return_arrow.dart';
import 'package:touch/components/system_text_field.dart';
import 'package:touch/constants/app_colors.dart';
import 'package:touch/controlers/pessoa_control.dart';
import 'package:touch/controlers/session_control.dart';
import 'package:touch/objects/pessoa.dart';

class PerfilForm extends StatelessWidget {
  TextEditingController  nomeController = TextEditingController();
  TextEditingController  emailController = TextEditingController();
  TextEditingController  senhaController = TextEditingController();
  TextEditingController  cepController = TextEditingController();
  TextEditingController  ruaController = TextEditingController();
  TextEditingController  estadoController = TextEditingController();
  TextEditingController  paisController = TextEditingController();


  PerfilForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SessionControl.me(
        (Map<String, dynamic>obj) {
          nomeController.text = obj['nome'];
          emailController.text = obj['email'];
          cepController.text = obj['cep'];
          ruaController.text = obj['rua'];
          estadoController.text = obj['estado'];
          paisController.text = obj['pais'];
        }
    );
    return Center(
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height *.06,
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                  child: ReturnArrow(action: (){
                    Navigator.pushNamed(context, 'initial-page');
                  }),
                ),
              )
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height *.05,
                child: const Align(
                  alignment: Alignment.topLeft,
                  child: PageTitle(color: titlePageColorBlue, text: "Perfil",font_size: 35,)
                )
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height *.25,
                child: const Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                    child: ProfileImage(),
                  ),
                )
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                height: MediaQuery.of(context).size.height *.53,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child:ListView(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 10, top: 20),
                        child:  SystemTextField(
                            label: "Nome",
                            controller: nomeController,
                        )
                      ),
                      Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child:  SystemTextField(
                              label: "E-mail",
                            controller: emailController,
                          )
                      ),
                      Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child:  SystemTextField(
                              label: "Senha",
                              controller: senhaController,
                          )
                      ),
                      Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child:  SystemTextField(
                              label: "CEP",
                              controller: cepController,
                          )
                      ),
                      Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child:  SystemTextField(
                              label: "Rua",
                              controller: ruaController,
                          )
                      ),
                      Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child:  SystemTextField(
                            label: "Estado",
                            controller: estadoController,
                          )
                      ),
                      Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child:  SystemTextField(
                            label: "Pais",
                            controller: paisController,
                          )
                      ),
                    ],
                  )
                )
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                height: MediaQuery.of(context).size.height *.08,
                child: ButtonPrimary(
                  label: 'Editar',
                  callback: (){
                    Pessoa pessoa = Pessoa();
                    pessoa.nome = 'kleiton';
                    pessoa.email = emailController.text;
                    pessoa.senha = senhaController.text;
                    pessoa.cep = cepController.text;
                    pessoa.rua = ruaController.text;
                    pessoa.estado = estadoController.text;
                    pessoa.pais = paisController.text;

                    PessoaControl.atualizar(pessoa);
                  },
                )
            ),
          ],
        )
    );
  }
}
