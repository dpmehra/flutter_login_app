import 'package:flutter/material.dart';
import 'package:flutter_http_post_request/pages/home_page.dart';
import 'package:flutter_http_post_request/pages/widgets/drive.dart';
import 'package:flutter_http_post_request/pages/widgets/widget_report_list.dart';

import '../../shared_service.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
     child: Column(
       children: [
         AppBar(
           backgroundColor: Colors.orange,
           title: Text("KARMA"),
         ),
         Divider(),
         ListTile(
           leading: Icon(Icons.link),
           title: Text("Drive",style: TextStyle(fontWeight: FontWeight.w600),),
           onTap: (){
             Navigator.of(context).pushReplacementNamed(Drive.routeName);
           },
         ),
         Divider(),
         ListTile(
           leading: Icon(Icons.drafts),
           title: Text("Profile",style: TextStyle(fontWeight: FontWeight.w600),),
           onTap: (){
             Navigator.of(context).pushReplacementNamed(HomePage.routeName);
           },
         ),
         Divider(),
         ListTile(
           leading: Icon(Icons.logout),
           title: Text("Logout",style: TextStyle(fontWeight: FontWeight.w600),),
           onTap: (){
             SharedService.logout().then(
                   (_) => Navigator.of(context).pushReplacementNamed('/login'),
             );
           },
         ),
         Divider(),

       ],
     ),
    );
  }
}
