import 'package:flutter/material.dart';
import 'package:motoveys/Screens/dashBoardItem.dart';
import '../models/dataItemModel.dart';
import './dashBoardItem.dart';

// class DashboardPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Dashboard'),
//         backgroundColor: const Color.fromARGB(255, 221, 227, 231),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: ListView(
//           children: [
//             /
//           ],
//         ),
//       ),
//     );
//   }
// }

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        titleTextStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 24,
            letterSpacing: 2),
        centerTitle: false,
        backgroundColor: Color(0xFF610361),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            // Show dropdown menu
            showMenu(
              context: context,
              position: RelativeRect.fromLTRB(
                  0, 56, 0, 0), // Adjust the position as needed
              items: [
                PopupMenuItem<int>(
                  value: 0,
                  child: Text("Profile"),
                ),
                PopupMenuItem<int>(
                  value: 1,
                  child: Text("Logout"),
                ),
                PopupMenuItem<int>(
                  value: 2,
                  child: Text("Text"),
                ),
              ],
            ).then((value) {
              if (value == 0) {
                print("Profile menu is selected.");
              } else if (value == 1) {
                print("Logout menu is selected.");
              } else if (value == 2) {
                print("Text menu is selected.");
              }
            });
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyData.length,
          itemBuilder: (context, index) {
            return DashboardItemWidget(item: dummyData[index]);
          },
        ),
      ),
    );
  }
}


// actions: [
//           PopupMenuButton(
//               // add icon, by default "3 dot" icon
//               icon: Icon(Icons.menu),
//               itemBuilder: (context) {
//                 return [
//                   PopupMenuItem<int>(
//                     value: 0,
//                     child: Text("My Account"),
//                   ),
//                   PopupMenuItem<int>(
//                     value: 1,
//                     child: Text("Settings"),
//                   ),
//                   PopupMenuItem<int>(
//                     value: 2,
//                     child: Text("Logout"),
//                   ),
//                 ];
//               },
//               onSelected: (value) {
//                 if (value == 0) {
//                   print("My account menu is selected.");
//                 } else if (value == 1) {
//                   print("Settings menu is selected.");
//                 } else if (value == 2) {
//                   print("Logout menu is selected.");
//                 }
//               }),
//         ],