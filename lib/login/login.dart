import 'package:flutter/material.dart';
import 'package:flutterapp/utils/app_constants.dart' as Constants;

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.topCenter, colors: [
                Color(Constants.primaryColor),
                Color(Constants.shamRock)
              ], stops: [
                0.1,
                0.7
              ]),
            )),
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
                    Text('Sign In',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'OpenSans',
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold)),
                    SizedBox(height: 30.0),
                    _buildEmailTF(),
                    SizedBox(height: 30.0),
                    _buildPasswordTF(),
                    _buildForgotPasswordBtn(),
                    _buildRememberMeCB(),
                    _buildLoginBtn(),
                    _buildSignInWithText(),
                    _buildSocialBtnsRow(),
                    _buildSignUp()
                  ],
                )
                )
                ),
      ],
    )
    );
  }

  GestureDetector _buildSignUp() {
    return GestureDetector(
            onTap: () => print("Sign Up ...."),
            child: Container(
              padding: EdgeInsets.only(top: 25.0),
                child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Don\'t have an account? ',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'OpenSans',
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400
                      )
                    ),
                    TextSpan(
                      text: 'Sign Up!',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'OpenSans',
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold
                      )
                    )
                  ]
                ),
              ),
            ),
          );
  }

  Container _buildSocialBtnsRow() {
    return Container(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  _buildSocialBtn(() => print("tapped FB Social button..."), AssetImage('assets/images/png/001-facebook.png')),
                  _buildSocialBtn(() => print("tapped Google Social button..."), AssetImage('assets/images/png/002-google.png')),
                ],
              ),
            );
  }

  GestureDetector _buildSocialBtn(Function onTap, AssetImage logo) {
    return GestureDetector(
            onTap: onTap,
            child: Container(
              height: 60.0,
              width: 60.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0, 2),
                    blurRadius: 6.0
                  )
                ],
                image: DecorationImage(
                  image: logo
                )
              ),
            ),
          );
  }

  Column _buildSignInWithText() {
    return Column(
            children: <Widget>[
              Text(
                '- OR -',
                style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400
              ),
              ),
              SizedBox(height: 20.0),
              Text(
                'Sign in with',
                style: Constants.kLabelStyle
              )
            ],
          );
  }

  Container _buildLoginBtn() {
    return Container(
            padding: EdgeInsets.symmetric(vertical: 25.0),
            width: double.infinity,
            child: RaisedButton(
              elevation: 5.0,
              onPressed: () => print('Login Button Pressed'),
              padding: EdgeInsets.all(15.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              color: Colors.white,
              child: Text(
                'LOGIN',
                style: TextStyle(
                  color: Colors.green,
                  letterSpacing: 1.5,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'OpenSans'
                )
              )
            )
          );
  }

  Container _buildRememberMeCB() {
    return Container(
            child: Row(
            children: <Widget>[
              Theme(
                  data:
                      ThemeData(unselectedWidgetColor: Colors.white),
                  child: Checkbox(
                    value: _rememberMe,
                    checkColor: Colors.white,
                    activeColor: Colors.green,
                    onChanged: (bool value) {
                      setState(() {
                        _rememberMe = value;
                      });
                    },
                  )),
            ],
          )
        );
  }

  Container _buildForgotPasswordBtn() {
    return Container(
        alignment: Alignment.centerRight,
        child: FlatButton(
            onPressed: () => print('Forgot button pressed'),
            child: Text(
              'Forgot Password',
              style: Constants.kLabelStyle,
            )));
  }

  Column _buildEmailTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Email', style: Constants.kLabelStyle),
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
                  prefixIcon: Icon(Icons.email, color: Colors.white),
                  hintStyle: Constants.kHintTextStyle,
                  hintText: 'Enter your Email'),
            ))
      ],
    );
  }

  Column _buildPasswordTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Password', style: Constants.kLabelStyle),
        SizedBox(height: 10.00),
        Container(
            alignment: Alignment.centerLeft,
            decoration: Constants.kBoxDecorationStyle,
            height: 60.0,
            child: TextField(
              obscureText: true,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14.0),
                  prefixIcon: Icon(Icons.lock, color: Colors.white),
                  hintStyle: Constants.kHintTextStyle,
                  hintText: 'Enter your Password'),
            ))
      ],
    );
  }
}
