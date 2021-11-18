import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:touch/constants/app_colors.dart';

class ActivityButton extends StatelessWidget {
  final String label;
  final VoidCallback action;

  const ActivityButton({Key? key, required this.label, required this.action})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: action,
        child: SizedBox(
          height: 120,
          child: Container(
            padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 5,
                      child: RichText(
                          text: TextSpan(
                        text: label,
                        style: const TextStyle(
                          color: Colors.black54,
                          fontSize: 28
                        ),
                      )),
                    ),
                    Expanded(
                      child: IconButton(
                          padding: const EdgeInsets.only(right: 80.0),
                          icon: Icon(Icons.play_circle_outline, size: 43.0, color: Colors.black54,),
                          onPressed: () {
                            print('xx');
                          }),
                    )
                  ],
                )),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              gradient: LinearGradient(
                  stops: [0.04, 0.04], colors: [Colors.blue, Colors.white]),
              border: Border.all(color: Colors.black12),
            ),
          ),
        ));
  }
}
