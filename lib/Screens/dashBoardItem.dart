import 'package:flutter/material.dart';
import 'package:motoveys/Screens/claimProcessing.dart';
import 'package:motoveys/models/dataItemModel.dart';

class DashboardItemWidget extends StatelessWidget {
  final ClaimsDashboardItems item;

  DashboardItemWidget({required this.item});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          // Navigate to Sameer.dart page
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    ClaimProcessing()), // Replace SameerPage() with your actual Sameer.dart page class
          );
        },
        child: Container(
          child: Card(
            elevation: 10,
            margin: EdgeInsets.symmetric(vertical: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 30,
                ),
                const Column(
                  children: [
                    Icon(Icons.ac_unit_sharp),
                    Text("Inside Column 1"),
                  ],
                ),
                SizedBox(
                  width: 30,
                ),
                Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    Text(
                      'Request Number: ${item.requestNumber}',
                      //style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('Customer Name: ${item.customerName}'),
                    Text('Car Number: ${item.carNumber}'),
                    Text('Car Name: ${item.carName}'),
                    Text('Status: ${item.status}'),
                    const SizedBox(height: 10),
                  ],
                ),
                const SizedBox(
                  width: 30,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.phone),
                    Icon(Icons.mail_outline),
                    Icon(Icons.message_outlined),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}

// class DashboardItemWidget extends StatelessWidget {
//   final String requestNumber;
//   final String customerName;
//   final String carNumber;
//   final String carName;
//   final String status;
//   final int phoneNumber;
//   final String emailId;
//   // final Image imageOfCar;

//   DashboardItem(
//       {required this.requestNumber,
//       required this.customerName,
//       required this.carNumber,
//       required this.carName,
//       required this.status,
//       required this.phoneNumber,
//       required this.emailId});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 4,
//       margin: EdgeInsets.symmetric(vertical: 8),
//       child: Row(
//         // title: Text(requestNumber, style: TextStyle(fontSize: 18)),
//         // subtitle: Text(customerName,
//         //     style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           const Column(
//             children: [
//               Icon(Icons.ac_unit_sharp),
//               // Image.asset(name),
//               Text("Inside Column 1"),
//             ],
//           ),
//           Column(
//             children: [
//               Text(requestNumber),
//               Text(customerName),
//               Text(carNumber),
//               Text(carName),
//               Text(status),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
