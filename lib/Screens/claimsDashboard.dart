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
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 177, 20, 177),
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
