import 'package:flutter/material.dart';
import 'package:moto_kerala/CommonComponents/components/RaisedGradientButton.dart';
import 'package:moto_kerala/Constants/Colors/CColor.dart';
import 'package:moto_kerala/Constants/SizeConfig/SizeConfig.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';

class VerificationPage extends StatefulWidget {
  @override
  _VerificationPageState createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  final ccolor = CColor();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: SizeConfig.screenHeight * 0.1,
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                "assets/images/logos/redlogo.png",
                width: SizeConfig.screenWidth * 0.18,
              ),
            ),
            SizedBox(
              height: SizeConfig.screenHeight * 0.15,
            ),
            Align(
              child: Text(
                "VERIFICATION",
                style: TextStyle(
                    fontSize: SizeConfig.screenHeight * 0.028,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: SizeConfig.screenHeight * 0.05,
            ),
            //TODO (pin)
            Container(
              width: SizeConfig.screenWidth * 0.80,
              child: Column(
                children: [
                  PinInputTextFormField(
                    pinLength: 4,
                    decoration: UnderlineDecoration(
                        colorBuilder: PinListenColorBuilder(
                            ccolor.loginBtnBtm, ccolor.textformfield)),
                  ),
                  SizedBox(
                    height: SizeConfig.screenHeight * 0.05,
                  ),
                  RaisedGradientButton(
                    onPressed: null,
                    child: Text(
                      "CONTINUE",
                      style: TextStyle(color: ccolor.loginTxt),
                    ),
                    radius: 30,
                    gradient: LinearGradient(
                        colors: [ccolor.loginBtnTop, ccolor.loginBtnBtm],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
