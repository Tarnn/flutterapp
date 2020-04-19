import 'package:Tranquilo/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'utils/app_constants.dart' as Constants;
import 'package:Tranquilo/login/login.dart';
import 'package:Tranquilo/pages/home/home.dart';

void setupLocator() {
  GetIt.I.registerLazySingleton(() => AuthService());
}

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Constants.applicationName,
      theme: ThemeData(
          primarySwatch: Colors.green,
          primaryColor: Color(Constants.primaryColor),
          accentColor: Color(Constants.shamRock),
          fontFamily: 'OpenSans'),
      initialRoute: '/login',
      onGenerateRoute: generateRoutes,
      debugShowCheckedModeBanner: false,
    );
  }

  Route generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (context) => MyHomePage(title: Constants.applicationName));
        break;
      case '/login':
        return MaterialPageRoute(builder: (context) => LoginPage());
        break;
    }
    return MaterialPageRoute(
        builder: (context) => MyHomePage(title: Constants.applicationName));
  }
}
