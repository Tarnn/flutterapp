library constants;

import 'package:flutter/material.dart';

const String applicationName = 'Tranquilo';
const int primaryColor = 0xFF03c04a;
const int shamRock = 0xFF03AC13;
const int seaFoam = 0xFF3FE897;

final kHintTextStyle = TextStyle(
  color: Colors.white54,
  fontFamily: 'OpenSans',
);

final kLabelStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontFamily: 'OpenSans',
);

final kBoxDecorationStyle = BoxDecoration(
  color: Color(primaryColor),
  borderRadius: BorderRadius.circular(10.0),
  boxShadow: [
    BoxShadow(
      color: Colors.black12,
      blurRadius: 7.0,
      offset: Offset(0, 5),
    ),
  ],
);

final kUnderBoxShadowDecorationStyle = BoxShadow(
  color: Colors.black12,
  blurRadius: 7.0,
  offset: Offset(0, 5),
);

// ENDPOINTS
final String LOGIN_ENDPOINT = 'http://localhost:8199/auth';
