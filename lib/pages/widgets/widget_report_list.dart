// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_http_post_request/api/api_service.dart';
// import 'package:flutter_http_post_request/model/user_model.dart';
//
// class WidgetReportList extends StatefulWidget {
//   @override
//   _WidgetReportListState createState() => _WidgetReportListState();
// }
//
// class _WidgetReportListState extends State<WidgetReportList> {
//   APIService apiService;
//
//   @override
//   void initState() {
//     super.initState();
//     apiService = new APIService();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(4),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           new Padding(
//             padding: EdgeInsets.all(10),
//             child: Text(
//               "User List",
//               style: TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
//           _fetchData()
//         ],
//       ),
//     );
//   }
//
//   Widget _fetchData() {
//     return FutureBuilder<DataModel>(
//       future: apiService.getUsers(),
//       builder: (BuildContext context, AsyncSnapshot<DataModel> snapshot) {
//         if (snapshot.hasData) {
//           return _buildDataTable(snapshot.data);
//         }
//
//         return Center(
//           child: CircularProgressIndicator(),
//         );
//       },
//     );
//   }
//
//   Widget _buildDataTable(DataModel dataModel) {
//     return DataTable(
//       columns: [
//         DataColumn(
//           label: Text(
//             "Name",
//             style: TextStyle(
//               fontSize: 14,
//               fontWeight: FontWeight.w900,
//             ),
//           ),
//         ),
//         DataColumn(
//           label: Text(
//             "Email",
//             style: TextStyle(
//               fontSize: 14,
//               fontWeight: FontWeight.w900,
//             ),
//           ),
//         ),
//       ],
//       sortColumnIndex: 1,
//       rows: dataModel.data
//           .map(
//             (data) => DataRow(
//               cells: <DataCell>[
//                 DataCell(Row(
//                   children: [
//                     Image.network(
//                       data.avatar,
//                       width: 30,
//                       height: 30,
//                     ),
//                     Padding(
//                       padding: EdgeInsets.all(10),
//                       child: Text(
//                         data.firstName + " " + data.lastName,
//                         style: TextStyle(fontSize: 13),
//                       ),
//                     )
//                   ],
//                 )),
//                 DataCell(
//                   Text(
//                     data.email,
//                     style: TextStyle(
//                       fontSize: 13,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           )
//           .toList(),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:flutter_http_post_request/pages/widgets/app_drawer.dart';
import 'package:flutter_http_post_request/pages/widgets/drive.dart';
class EditProfileUI extends StatefulWidget {
  @override
  EditProfileUIState createState() => EditProfileUIState();
}

class EditProfileUIState extends State<EditProfileUI> {
  bool isObscurePassword = true;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('PROFILE'),
      //   leading: IconButton(
      //     icon: Icon(
      //       Icons.arrow_back,
      //       color: Colors.white,
      //     ),
      //
      //     onPressed:  ()  {},
      //   ),
      //   actions: [
      //     IconButton(
      //         icon: Icon(
      //           Icons.settings,
      //           color: Colors.white,
      //         ),
      //         onPressed: () {}
      //     )
      //   ],
      // ),
      body: Container(
        padding: EdgeInsets.only(left: 15, top: 20, right: 15),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context) .unfocus();
          },
          child: ListView(
            children: [
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                          border: Border.all(width:4, color: Colors.white),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 2,
                                blurRadius: 10,
                                color: Colors.black.withOpacity(0.1)
                            )
                          ],
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://cdn.pixabay.com/photo/2014/05/05/19/30/meditation-338446_960_720.jpg'
                              )
                          )
                      ),
                    ),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 4,
                                  color: Colors.white
                              ),
                              color: Colors.blue
                          ),
                          child: Icon(
                            Icons.edit,
                            color: Colors.white,
                          ),
                        )
                    )
                  ],
                ),
              ),
              SizedBox(height: 30 ),
              buildTextField("Full Name", "Eve Holt", false),
              buildTextField("Email","eve.holt@reqres.in", false),
              buildTextField("Password","pistol",true),
              buildTextField("Location","New Delhi",false),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: ()  {} ,
                    child: Text("CANCEL", style: TextStyle(
                        fontSize: 15,
                        letterSpacing: 2,
                        color: Colors.black
                    )),
                    style : ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 50),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed(Drive.routeName);
                    },
                    child: Text('Drive', style: TextStyle(
                        fontSize: 15,
                        letterSpacing: 2,
                        color: Colors.white
                    )),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
                        padding: EdgeInsets.symmetric(horizontal: 50),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),


    );
  }
  Widget buildTextField(String labelText, String placeholder, bool isPasswordTextField){
    return Padding(
        padding: EdgeInsets.only(bottom: 30),
        child: TextField(
          obscureText: isPasswordTextField ? isObscurePassword : false,
          decoration: InputDecoration(
              suffixIcon: isPasswordTextField ?
              IconButton(
                  icon: Icon(Icons.remove_red_eye, color: Colors.grey),
                  onPressed: () {
                    setState(() {
                      isObscurePassword = !isObscurePassword;
                    });
                  }
              ): null,
              contentPadding: EdgeInsets.only(bottom: 5),
              labelText: labelText,
              floatingLabelBehavior: FloatingLabelBehavior.always,
              hintText: placeholder,
              hintStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey
              )
          ),
        )
    );
  }

}
