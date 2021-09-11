import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String label;
  final TextInputType input_type;
  const InputField(
      {
        Key? key,
        required this.label,
        required this.input_type,
      }
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        keyboardType: input_type,
        style: const TextStyle(color: Colors.black, fontSize: 20),
        decoration: InputDecoration(
            labelText: label,
            labelStyle: const TextStyle(color: Colors.black),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              borderSide: BorderSide(
                  color: Colors.grey,
                  width: 1.5
              ),
            )
        )
    );
  }
}
