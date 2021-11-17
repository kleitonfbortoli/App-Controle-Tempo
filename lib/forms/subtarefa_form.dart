import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:touch/components/button_primary.dart';
import 'package:touch/components/input_field.dart';
import 'package:touch/components/page_title.dart';
import 'package:touch/components/return_arrow.dart';
import 'package:touch/components/system_button.dart';
import 'package:touch/constants/app_colors.dart';

class SubtarefaForm extends StatelessWidget {
  SubtarefaForm({Key? key}) : super(key: key);

  TextEditingController  nomeController = TextEditingController();
  TextEditingController  descricaoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height *.1,
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                  child: ReturnArrow(action: (){
                    Navigator.pushNamed(context, 'configuration-page');
                  }),
                ),
              )
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height *.09,
                child: const Align(
                  alignment: Alignment.topLeft,
                  child: PageTitle(
                    color: titlePageColorBlue,
                    text: "Subtarefa",
                    font_size: 35,
                  )
                )
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                height: MediaQuery.of(context).size.height *.20,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 10, top: 80),
                      child: InputField(
                        label: 'Nome da Subtarefa',
                        input_type: TextInputType.text,
                        controller: nomeController,
                      ),
                    ),
                  ],
                )
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                height: MediaQuery.of(context).size.height *.20,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 10, top: 20),
                      child: InputField(
                        label: 'Descrição da Subtarefa',
                        input_type: TextInputType.text,
                        controller: descricaoController,
                      ),
                    ),
                  ],
                )
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                height: MediaQuery.of(context).size.height *.10,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 10, top: 20),
                      child:ButtonPrimary(
                        label: 'Iniciar',
                        callback: (){

                        },
                      )
                    ),
                  ],
                )
            ),
          ],
        )
    );
  }
}
