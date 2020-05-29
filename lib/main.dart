import 'package:flutter/material.dart';
import 'package:mylogin/activity.dart';

void main() {
  runApp(Login());
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/bg.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          child: Padding(padding: EdgeInsets.all(28.0),
          child: LoginActivity(),),
        ),
      ),
    );
  }
}