import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SystemButton extends StatelessWidget {
  final String label;
  final VoidCallback action;
  const SystemButton(
      {
        Key? key,
        required this.label,
        required this.action,
      }
      ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: action,
        child: SizedBox(
          height: 60,
          child: Container(
            padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    RichText(
                        text: TextSpan(
                          text: label,
                          style: const TextStyle(
                            color: Colors.blue,
                            fontSize: 20,
                            fontFamily: 'Montserrat',
                          ),
                        )
                    ),
                  ],
                )
            ),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                  Radius.circular(10.0)
              ),
              gradient: LinearGradient(
                  stops: [0.04, 0.04],
                  colors: [Colors.blue, Colors.white]
              ),
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(108, 152, 189, 0.5),
                  spreadRadius: 2,
                  blurRadius: 8,
                  offset: Offset(0, 5), // changes position of shadow
                ),
              ],
            ),
          ),
        )
    );
  }
}
