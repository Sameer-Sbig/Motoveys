import 'package:flutter/material.dart';
import 'package:motoveys/Screens/dashBoardItem.dart';
import 'package:motoveys/Screens/userProfile.dart';
import '../models/dataItemModel.dart';
import './dashBoardItem.dart';

class DashboardPage extends StatefulWidget {
  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SafeArea(
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xFF610361),
                ),
                child: UserAccountsDrawerHeader(
                  accountName: Text(
                    "Ram Sharma",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18),
                  ),
                  accountEmail: Text("Ram@gmail.com"),
                  decoration: BoxDecoration(
                    color: Color(0xFF610361),
                  ),
                  currentAccountPictureSize: Size.square(50),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 179, 14, 179),
                    child: Text(
                      "R",
                      style: TextStyle(
                          fontSize: 30.0, color: Color.fromARGB(255, 0, 0, 0)),
                    ), //Text
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text("My Profile"),
                onTap: () {
                  print("profile clicked!");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyProfile(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text("Log Out"),
                onTap: () {
                  print("Logout clicked!");
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => MyProfile(),
                  //   ), // Replace SameerPage() with your actual Sameer.dart page class
                  // );
                },
              ),

              // PopupMenuItem<int>(
              //   value: 0,
              //   child: Text("Profile"),
              // ),
              // PopupMenuItem<int>(
              //   value: 1,
              //   child: Text("Logout"),
              // ),
              // PopupMenuItem<int>(
              //   value: 2,
              //   child: Text("Text"),
              // ),
              // PopupMenuItem<int>(
              //   value: 2,
              //   child: Text(
              //     "App Version 1.0",
              //     style: TextStyle(color: Color.fromARGB(90, 0, 0, 0)),
              //   ),
              // ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: Text('Dashboard'),
        titleTextStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 24,
            letterSpacing: 2),
        centerTitle: false,
        backgroundColor: Color(0xFF610361),
        // leading: IconButton(
        //   icon: Icon(Icons.menu),
        //   onPressed: () {
        //     // Show dropdown menu
        //     showMenu(
        //       context: context,
        //       position: RelativeRect.fromLTRB(
        //           0, 56, 0, 0), // Adjust the position as needed
        //       items: [
        //         PopupMenuItem<int>(
        //           value: 0,
        //           child: Text("Profile"),
        //         ),
        //         PopupMenuItem<int>(
        //           value: 1,
        //           child: Text("Logout"),
        //         ),
        //         PopupMenuItem<int>(
        //           value: 2,
        //           child: Text("Text"),
        //         ),
        //       ],
        //     ).then((value) {
        //       if (value == 0) {
        //         print("Profile menu is selected.");
        //       } else if (value == 1) {
        //         print("Logout menu is selected.");
        //       } else if (value == 2) {
        //         print("Text menu is selected.");
        //       }
        //     });
        //   },
        // ),
        actions: [
          IconButton(
              onPressed: () {
                print("Search clicked");
              },
              icon: Icon(Icons.search_outlined)),
          IconButton(
              onPressed: () {
                print("Filter button clicked");
              },
              icon: Icon(Icons.filter_alt_rounded)),
          IconButton(
              onPressed: () {
                print("Notification button clicked");
              },
              icon: Icon(Icons.notification_add_outlined)),
        ],
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