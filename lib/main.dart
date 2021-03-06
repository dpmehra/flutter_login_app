import 'package:flutter/material.dart';
import 'package:flutter_http_post_request/pages/widgets/drive.dart';
import 'package:flutter_http_post_request/pages/widgets/widget_report_list.dart';

import 'pages/home_page.dart';
import 'pages/login_page.dart';
import 'shared_service.dart';

Widget _defaultHome = new LoginPage();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Set default home.

  // Get result of the login function.
  bool _result = await SharedService.isLoggedIn();
  if (_result) {
    _defaultHome = new HomePage();
  }

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dashboard',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'OpenSans',
        primaryColor: Colors.white,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          elevation: 0,
          foregroundColor: Colors.white,
        ),
        accentColor: Colors.deepOrange,
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 22.0, color: Colors.deepOrange),
          headline2: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.w700,
            color: Colors.deepOrange,
          ),
          bodyText1: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w400,
            color: Colors.blueAccent,
          ),
        ),
      ),
      home: _defaultHome,
      routes: <String, WidgetBuilder>{
        // Set routes for using the Navigator.
        '/home': (BuildContext context) => new HomePage(),
        '/login': (BuildContext context) => new LoginPage(),
        Drive.routeName:(ctx)=>Drive(),
       // IdCard.routeName:(ctx)=>IdCard(),
        HomePage.routeName:(ctx)=>HomePage(),
      },
    );
  }
}
