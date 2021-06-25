import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_http_post_request/pages/widgets/app_drawer.dart';
import 'package:flutter_http_post_request/shared_service.dart';

import 'widgets/widget_home_categories.dart';
import 'widgets/widget_report_list.dart';

class HomePage extends StatefulWidget {
  static const routeName='/home';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.orange.shade600,
          title: Text("Profile"),
          actions: <Widget>[
            GestureDetector(
              onTap: () {
                SharedService.logout().then(
                  (_) => Navigator.of(context).pushReplacementNamed('/login'),
                );
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 5.0, 0),
                    child: Icon(Icons.logout),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 10.0, 0),
                    // child: Text(
                    //   "Logout",
                    //   style: TextStyle(fontSize: 18),
                    // ),
                  ),
                ],
              ),
            ),
          ]),
      drawer: AppDrawer(),
      body: _uiSetup(),
    );
  }

  Widget _uiSetup() {
    return new Container(
      alignment: Alignment.center,
      child: new Column(
        children: <Widget>[
          new Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: EditProfileUI(),
            ),
          ),
        ],
      ),
    );
  }
}
