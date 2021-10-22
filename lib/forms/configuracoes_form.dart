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
import 'package:touch/components/system_button.dart';
import 'package:touch/components/system_text_field.dart';
import 'package:touch/constants/app_colors.dart';

class ConfiguracoesForm extends StatelessWidget {
  ConfiguracoesForm({Key? key}) : super(key: key);

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
                    Navigator.pushNamed(context, 'initial-page');
                  }),
                ),
              )
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height *.20,
                child: const Align(
                  alignment: Alignment.topLeft,
                  child: PageTitle(color: titlePageColorBlue, text: "Configurações",font_size: 40,)
                )
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                height: MediaQuery.of(context).size.height *.70,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 10, top: 20),
                      child: SystemButton(
                          label: "Geral",
                          action: () {
                            print('Yout are clicked in general');
                          }
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: SystemButton(
                            label: "Notificações",
                            action: () {
                              print('your are clicked in notifications');
                            }
                        ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: SystemButton(
                            label: "Tema",
                            action: () {
                              Navigator.pushNamed(context, 'tema-page');
                            }
                        ),
                    ),
                  ],
                )
            ),
          ],
        )
    );
  }
}
