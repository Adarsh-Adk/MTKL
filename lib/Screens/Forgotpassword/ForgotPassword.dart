import 'package:flutter/material.dart';
import 'package:moto_kerala/CommonComponents/components/RaisedGradientButton.dart';
import 'package:moto_kerala/Constants/Colors/CColor.dart';
import 'package:moto_kerala/Constants/SizeConfig/SizeConfig.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  var ccolor = CColor();
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
            height: SizeConfig.screenHeight * 0.08,
          ),
          Align(
            child: Text(
              "FORGOT PASSWORD",
              style: TextStyle(
                  fontSize: SizeConfig.screenHeight * 0.028,
                  fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(
            height: SizeConfig.screenHeight * 0.1,
          ),
          Container(
            width: SizeConfig.screenWidth * 0.80,
            child: Form(
                child: Column(
              children: [
                Container(
                    height: SizeConfig.screenHeight * 0.07,
                    child: ForgotPasswordField(
                      ccolor: ccolor,
                    )),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                RaisedGradientButton(
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
            )),
          )
        ],
      )),
    );
  }
}

class ForgotPasswordField extends StatelessWidget {
  const ForgotPasswordField({
    Key key,
    @required this.ccolor,
  }) : super(key: key);

  final CColor ccolor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(5),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: ccolor.textformfield),
            gapPadding: 5,
          ),
          enabledBorder: OutlineInputBorder(
            gapPadding: 5,
            borderSide: BorderSide(color: ccolor.textformfield),
          ),
          labelText: "ENTER EMAIL ID",
          floatingLabelBehavior: FloatingLabelBehavior.always),
    );
  }
}
