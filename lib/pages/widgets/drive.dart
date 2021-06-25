import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_http_post_request/pages/widgets/app_drawer.dart';

import '../home_page.dart';

class Drive extends StatelessWidget {
  //const Drive({Key key}) : super(key: key);
static const routeName='/drive';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade600,
        title: Text("Drive"),
        actions: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.green, // background
                onPrimary: Colors.white, // foreground
              ),
              onPressed: (){
                Navigator.of(context).pushReplacementNamed(HomePage.routeName);
              }, child: Text("Profile")),
        ],
      ),
      drawer: AppDrawer(),
      body: Stack(
        children:[
          Container(

       child: GridView(
          gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            childAspectRatio: 1.9 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ) ,
          children:[
            Container(
              width: double.infinity,
              // margin: EdgeInsets.only(top: 50),
              // // color: Colors.blue,
              // padding: EdgeInsets.only(top: 10,left: 10,right: 10),
              decoration: BoxDecoration(
                border: Border.all(width: 2,color: Colors.black12),
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Container(
                margin: EdgeInsets.only(top: 50),
                // color: Colors.blue,
                padding: EdgeInsets.only(top: 10,left: 10,right: 10),
                decoration: BoxDecoration(
                  border: Border.all(width: 2,color: Colors.black12),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: GridTile(
                  child: Image.network('https://imgk.timesnownews.com/story/Guru_Purnima_Buddha_2020.jpg?tr=w-1200,h-900',fit: BoxFit.cover,),
                  header: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("9,532",textAlign:TextAlign.end,style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white,fontSize: 25),),
                      Text("Joined",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white,fontSize: 20),),
                      SizedBox(height: 80,),
                      Text("CATEGORY",textAlign: TextAlign.start,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
                      SizedBox(height: 20,),
                      Text("SPIRITUAL EMPOWERMENT",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                    ],
                  ),
                  footer: GridTileBar(
                    backgroundColor: Colors.orange,
                    leading: ElevatedButton(  style: ElevatedButton.styleFrom(
                      primary: Colors.green, // background
                      onPrimary: Colors.white, // foreground
                    ),onPressed: () {  }, child: Text("Joined",style: TextStyle(fontSize: 20)),),
                    trailing: Expanded(child: ElevatedButton(  style: ElevatedButton.styleFrom(
                      primary: Colors.white, // background
                      onPrimary: Colors.black, // foreground
                    ),onPressed: () {  }, child: Text("DO KARMA",style: TextStyle(fontSize: 20)),)),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              // color: Colors.blue,
              padding: EdgeInsets.only(top: 10,left: 10,right: 10),
              decoration: BoxDecoration(
                border: Border.all(width: 2,color: Colors.black12),
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: GridTile(
                child: Image.network('https://static.toiimg.com/photo/msid-75587673,width-96,height-65.cms',fit: BoxFit.cover,),
                header: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("9,532",textAlign:TextAlign.end,style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white,fontSize: 25),),
                    Text("Joined",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white,fontSize: 20),),
                    SizedBox(height: 80,),
                    Text("CATEGORY",textAlign: TextAlign.start,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
                    SizedBox(height: 20,),
                    Text("SPIRITUAL EMPOWERMENT",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                  ],
                ),
                footer: GridTileBar(
                    backgroundColor: Colors.orange,
                  leading: ElevatedButton(  style: ElevatedButton.styleFrom(
                    primary: Colors.green, // background
                    onPrimary: Colors.white, // foreground
                  ),onPressed: () {  }, child: Text("Joined",style: TextStyle(fontSize: 20)),),

                  trailing: Expanded(child: ElevatedButton(  style: ElevatedButton.styleFrom(
                    primary: Colors.white, // background
                    onPrimary: Colors.black, // foreground
                  ),onPressed: () {  }, child: Text("DO KARMA",style: TextStyle(fontSize: 20)),)),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              // color: Colors.blue,
              padding: EdgeInsets.only(top: 10,left: 10,right: 10),
              decoration: BoxDecoration(
                border: Border.all(width: 2,color: Colors.black12),
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: GridTile(
                child: Image.network('https://media.istockphoto.com/photos/buddha-statue-picture-id485020819?k=6&m=485020819&s=612x612&w=0&h=9DGtA9swdwdkNYePEWAjtN5oi_lFE4ku4JLu43xsWlg=',fit: BoxFit.cover,),
                header: Column(
                 // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("9,532",textAlign:TextAlign.end,style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white,fontSize: 20),),
                    Text("Joined",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white,fontSize: 25),),
                    SizedBox(height: 80,),
                    Text("CATEGORY",textAlign: TextAlign.start,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
                    SizedBox(height: 20,),
                    Text("SPIRITUAL EMPOWERMENT",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                  ],
                ),
                footer: GridTileBar(
                    backgroundColor: Colors.orange,
                  leading: ElevatedButton(  style: ElevatedButton.styleFrom(
                    primary: Colors.green, // background
                    onPrimary: Colors.white, // foreground
                  ),onPressed: () {  }, child: Text("Joined",style: TextStyle(fontSize: 20)),),
                  trailing: Expanded(child: ElevatedButton(  style: ElevatedButton.styleFrom(
                    primary: Colors.white, // background
                    onPrimary: Colors.black, // foreground
                  ),onPressed: () {  }, child: Text("DO KARMA",style: TextStyle(fontSize: 20)),)),
                ),
              ),
            ),
           // SizedBox(height: 20,),
          ],

    ),
          ),
    ],
      ),
    );
  }
}
