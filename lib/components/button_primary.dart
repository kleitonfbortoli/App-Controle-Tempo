import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonPrimary extends StatelessWidget {
  final String label;
  final VoidCallback callback;
  final bool showBorder;
  const ButtonPrimary(
      {
        Key? key,
        required this.label,
        required this.callback,
        this.showBorder = true
      }
      ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var side = const BorderSide(
      width: 2.0,
      color: Colors.lightBlue,
    );

    return  ElevatedButton(
      child: Text(
          label,
          style: TextStyle(
            color: Colors.black.withOpacity(0.7),
            fontSize: 20,
            height: 2.5,
            fontFamily: 'Montserrat',
            leadingDistribution: TextLeadingDistribution.even
          ),
      ),
      onPressed: callback,
      style:  ElevatedButton.styleFrom(
        primary: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        side: (showBorder ? side : null)
      ),
    );
  }
}
