import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonPrimary extends StatelessWidget {
  final String label;
  final VoidCallback callback;
  const ButtonPrimary(
      {
        Key? key,
        required this.label,
        required this.callback
      }
      ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: ElevatedButton(
        child: Text(
            label,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 20,
              height: 2.5,
              fontFamily: 'Montserrat',
           leadingDistribution: TextLeadingDistribution.even
            ),
        ),
        onPressed: callback,
        style:  ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
        ),
      ),
    );
  }
}
