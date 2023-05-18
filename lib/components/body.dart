import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_ui/components/background.dart';
import 'package:flutter_ui/components/rounded_button.dart';
import 'package:flutter_ui/constants.dart';

class body extends StatelessWidget {
  const body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // this size provider us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'WELCOM TO EDU',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            SvgPicture.asset(
              'lib/assets/icons/chat.svg',
              height: size.height * 0.45,
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            Roundbutton(
              prsee: () {},
              text: 'LOGIN',
            ),
            Roundbutton(
              color: kPrimaryLightColor,
              textcolor: Colors.black,
              prsee: () {},
              text: 'LOGIN',
            ),
          ],
        ),
      ),
    );
  }
}
