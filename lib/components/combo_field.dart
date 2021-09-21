import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ComboField extends StatelessWidget {
  final String label;
  final List<String> values;
  const ComboField(
      {
        Key? key,
        required this.label,
        required this.values,
      }
      ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
        icon: const Icon(Icons.arrow_downward),
        style: const TextStyle(color: Colors.black, fontSize: 20),
        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        items: values
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
            // : const OutlineInputBorder(
            //   borderRadius: BorderRadius.all(Radius.circular(10.0)),
            //   borderSide: BorderSide(
            //       color: Colors.grey,
            //       width: 1.5
            //   ),
            // )
    );
  }
}
