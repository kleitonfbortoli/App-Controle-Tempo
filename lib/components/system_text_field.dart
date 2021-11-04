import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SystemTextField extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  const SystemTextField(
      {
        Key? key,
        required this.label,
        required this.controller,

      }
      ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
            Radius.circular(10.0)
        ),
        gradient: LinearGradient(
            stops: [0.06, 0.04],
            colors: [Colors.blue, Colors.white]
        ),
      ),
      child : Padding(
        padding:  const EdgeInsets.fromLTRB(17, 0, 0, 0),
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(bottom: 10, top: 10, left: 10, right: 10),
            labelText: label,
            fillColor: Colors.blue,
            labelStyle: const TextStyle(color: Colors.black, fontSize: 15),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(width: 1,color: Colors.blue),
            ),
            disabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(width: 1,color: Colors.blue),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(width: 1,color: Colors.lightBlue),
            ),
            border: const OutlineInputBorder(
                borderSide: BorderSide(width: 1,)
            ),
            errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(width: 1,color: Colors.black)
            ),
            focusedErrorBorder: const OutlineInputBorder(
                borderSide: BorderSide(width: 1,color: Colors.yellowAccent)
            ),
          ),
        ),
      ),
    );
  }
}
