import 'package:flutter/material.dart';
import 'package:moto_kerala/Constants/Colors/CColor.dart';
import 'package:moto_kerala/Constants/SizeConfig/SizeConfig.dart';
import 'package:moto_kerala/CommonComponents/components/RaisedGradientButton.dart';
import 'package:moto_kerala/Screens/DummyPage/DummyPage.dart';
import 'package:moto_kerala/Screens/Forgotpassword/ForgotPassword.dart';
import 'package:moto_kerala/Screens/Verification/Verification.dart';
import 'package:page_transition/page_transition.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var ccolor = CColor();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(SizeConfig.screenWidth * 0.05),
            child: Column(
              children: [
                Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      "SKIP",
                      style: TextStyle(
                          color: ccolor.loginSkip,
                          fontSize: SizeConfig.screenHeight * 0.020),
                      textAlign: TextAlign.right,
                    )),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.06,
                ),
                Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      "assets/images/logos/redlogo.png",
                      width: SizeConfig.screenWidth * 0.18,
                    )),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.035,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "LOGIN ",
                    style: TextStyle(
                        fontSize: SizeConfig.screenHeight * 0.028,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.090,
                ),
                Container(
                  width: SizeConfig.screenWidth * 0.80,
                  child: Form(
                      child: Column(
                    children: [
                      Container(
                          height: SizeConfig.screenHeight * 0.06,
                          child: UsernameField(ccolor: ccolor)),
                      SizedBox(
                        height: SizeConfig.screenHeight * 0.045,
                      ),
                      Container(
                          height: SizeConfig.screenHeight * 0.06,
                          child: PasswordField(ccolor: ccolor)),
                      SizedBox(
                        height: SizeConfig.screenHeight * 0.030,
                      ),
                      Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      type: PageTransitionType
                                          .leftToRight,
                                      child: DummyPage()));
                            },
                            child: Text(
                              "FORGOT PASSWORD ?",
                              style: TextStyle(
                                  fontSize: SizeConfig.screenHeight * 0.018,
                                  fontWeight: FontWeight.w400),
                            ),
                          )),
                      SizedBox(
                        height: SizeConfig.screenHeight * 0.030,
                      ),
                      RaisedGradientButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  child: VerificationPage(),
                                  type:
                                      PageTransitionType.rightToLeft));
                        },
                        child: Text(
                          "LOGIN",
                          style: TextStyle(color: ccolor.loginTxt),
                        ),
                        radius: 30,
                        gradient: LinearGradient(
                            colors: [ccolor.loginBtnTop, ccolor.loginBtnBtm],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter),
                      ),
                      SizedBox(
                        height: SizeConfig.screenHeight * 0.08,
                      ),
                      Stack(
                        children: [
                          Divider(
                            color: ccolor.divider,
                            thickness: 0.2,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              color: ccolor.scaffoldClr,
                              height: 10,
                              width: SizeConfig.screenWidth * 0.30,
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "OR CONNECT WITH",
                              style: TextStyle(
                                  fontSize: SizeConfig.screenWidth * 0.03),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.screenHeight * 0.040,
                      ),
                      IconButton(
                          icon: Image(
                            image: AssetImage("assets/images/logos/google.png"),
                            width: SizeConfig.screenWidth * 0.18,
                          ),
                          onPressed: null)
                    ],
                  )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class UsernameField extends StatelessWidget {
  const UsernameField({
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
          labelText: "USERNAME",
          floatingLabelBehavior: FloatingLabelBehavior.always),
    );
  }
}

class PasswordField extends StatelessWidget {
  const PasswordField({
    Key key,
    @required this.ccolor,
  }) : super(key: key);

  final CColor ccolor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: true,
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
          labelText: "PASSWORD",
          floatingLabelBehavior: FloatingLabelBehavior.always),
    );
  }
}
