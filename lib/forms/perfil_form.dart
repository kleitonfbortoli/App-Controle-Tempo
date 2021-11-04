import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:touch/api/requests.dart';
import 'package:touch/components/button_primary.dart';
import 'package:touch/components/fadingListView.dart';
import 'package:touch/components/initial_bar.dart';
import 'package:touch/components/initial_list_item.dart';
import 'package:touch/components/logo.dart';
import 'package:touch/components/page_title.dart';
import 'package:touch/components/profile_image.dart';
import 'package:touch/components/return_arrow.dart';
import 'package:touch/components/system_text_field.dart';
import 'package:touch/constants/app_colors.dart';

class PerfilForm extends StatelessWidget {
  PerfilForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                child: Column(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(bottom: 10, top: 20),
                      child:  SystemTextField(label: "Nome")
                    ),
                    Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child:  SystemTextField(label: "E-mail")
                    ),
                    Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child:  SystemTextField(label: "Senha")
                    ),
                    Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child:  SystemTextField(label: "Telefone")
                    ),
                    Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child:  SystemTextField(label: "Data de Nascimento")
                    ),
                  ],
                )
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                height: MediaQuery.of(context).size.height *.08,
                child: ButtonPrimary(
                  label: 'Editar',
                  callback: (){
                    // Navigator.of(context).pushReplacementNamed('create-count');\
                    // print('chamando');
                    // PessoaModel().getAll();
                    new Request().showGenericSuccessMessage({'id':1});
                  },
                )
            ),
          ],
        )
    );
  }
}
