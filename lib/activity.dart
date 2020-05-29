import 'package:flutter/material.dart';
import 'package:mylogin/constants.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginActivity extends StatefulWidget {
  @override
  _LoginActivityState createState() => _LoginActivityState();
}

class _LoginActivityState extends State<LoginActivity> {
  String value;
  bool obTxt = true;
  Icon sufixCon = Icon(
    Icons.visibility,
    color: Colors.white54,
  );
  final String googleUrl =
      'https://image.flaticon.com/icons/svg/2991/2991148.svg';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 10.0),
              // color: Color(0xff000000),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome',
                    style: WelcomeTxt,
                  ),
                  Text(
                    'Sign in to continue',
                    style: toContinueTxt,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 32.0,
          ),
          Expanded(
            flex: 2,
            child: Container(
              // color: Color(0xff000000),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Email/Phone',
                    style: labelTxt,
                  ),
                  TextField(
                    cursorColor: Colors.white,
                    autocorrect: false,
                    style: fieldTxt,
                    // autofocus: true,
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white54),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.white, width: 1.25),
                      ),
                      hintText: ' Email',
                      hintStyle: hintTxt,
                    ),
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  Text(
                    'Password',
                    style: labelTxt,
                  ),
                  TextField(
                    cursorColor: Colors.white,
                    autocorrect: false,
                    style: fieldTxt,
                    obscureText: obTxt,
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white54),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 1.25),
                        ),

                        // border: InputBorder.none,
                        hintText: ' Password',
                        hintStyle: hintTxt,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              if (obTxt == true) {
                                obTxt = false;
                                sufixCon = Icon(
                                  Icons.visibility_off,
                                  color: Colors.white,
                                );
                              } else {
                                obTxt = true;
                                sufixCon = Icon(
                                  Icons.visibility,
                                  color: Colors.white54,
                                );
                              }
                            });
                          },
                          child: sufixCon,
                        )),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.fromLTRB(0.0, 16.0, 0.0, 16.0),
              decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.white, // set border color
                    width: 1),
                color: Colors.white38,
                borderRadius: BorderRadius.circular(42.0),
              ),
              child: GestureDetector(
                onTap: () {},
                child: Center(
                  child: Text(
                    'Sign In',
                    style: btnTxt,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Expanded(
            child: Container(
              // color: Color(0xff000000),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Forgot Password?',
                      style: forgotTxt,
                      textAlign: TextAlign.end,
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.remove,
                        color: Colors.white60,
                      ),
                      Text(
                        ' Or ',
                        style: toContinueTxt,
                        textAlign: TextAlign.center,
                      ),
                      Icon(
                        Icons.remove,
                        color: Colors.white60,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.fromLTRB(0.0, 16.0, 0.0, 16.0),
              decoration: BoxDecoration(
                color: Colors.white38,
                border: Border.all(
                    color: Colors.white70, // set border color
                    width: 1),
                borderRadius: BorderRadius.circular(42.0),
              ),
              child: GestureDetector(
                onTap: () {},
                child: Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.network(
                      googleUrl,
                      height: 24.0,
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      'Sign In with Google',
                      style: btnTxt,
                    ),
                  ],
                )),
              ),
            ),
          ),
          Expanded(
            child: Container(
              // color: Color(0xff000000),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Don\'t have an account?    ',
                    style: noAccountTxt,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Create Now',
                      style: createNowTxt,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// IconButton(
//     // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
//     icon: FaIcon(
//       FontAwesomeIcons.google,
//       color: Colors.white,
//     ),
//     onPressed: () {
//       print("Pressed");
//     }),
