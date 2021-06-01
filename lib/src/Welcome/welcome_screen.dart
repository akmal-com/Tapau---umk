import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zomato/src/screens/mainScreen.dart';
import '../constants.dart';
import 'constants_welcome.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text(
                'WELCOME TO TAPAU @ UMK',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
              ),
            ),
            SizedBox(
              height: size.height * 0.20,
            ),
            WelcomeButton(
              text: 'Customer',
              color: kPrimaryColor,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return MainScreen();
                  }),
                );
              },
            ),
            WelcomeButton(
                text: 'Business',
                color: Colors.orange,
                press: () {}
            ),
          ],
        ),
      ),
    );
  }
}