import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class Roundbutton extends StatelessWidget {
  final String text;
  final Function prsee;
  final Color color;
  final Color textcolor;
  const Roundbutton({
    super.key,
    required this.text,
    required this.prsee,
    this.color = kPrimaryColor,
    this.textcolor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: Container(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              disabledBackgroundColor: color,
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(29),
              )),
          onPressed: prsee(),
          child: Text(
            text,
            style: TextStyle(color: textcolor),
          ),
        ),
      ),
    );
  }
}
