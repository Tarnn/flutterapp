import 'package:flutter/material.dart';
import 'package:flutterapp/utils/app_constants.dart' as Constants;

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  colors: [
                    Color(Constants.primaryColor),
                  Color(Constants.shamRock)],
                  stops: [0.1, 0.7]
                  ),
            )
            ),
            Container(
              height: double.infinity,
              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(
                  horizontal: 40.0,
                  vertical: 120.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Sign In', 
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'OpenSans',
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold
                      )
                    ),
                    SizedBox(height: 30.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Email',
                          style: Constants.kLabelStyle
                        ),
                        SizedBox(height: 10.00),
                        Container(
                          alignment: Alignment.centerLeft,
                          decoration: Constants.kBoxDecorationStyle,
                          height: 60.0,
                          child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(top: 14.0),
                              prefixIcon: Icon(
                                Icons.email,
                                color: Colors.white
                              ),
                              hintStyle: Constants.kHintTextStyle,
                              hintText: 'Enter your Email'
                            ),
                          )
                        )
                      ],
                    )
                  ],
                )
              )
            ),
      ],
    )
    );
  }
}
