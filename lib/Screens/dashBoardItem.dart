import 'package:flutter/material.dart';
import 'package:motoveys/Screens/claimProcessing.dart';
import 'package:motoveys/models/dataItemModel.dart';

class DashboardItemWidget extends StatelessWidget {
  final ClaimsDashboardItems item;

  DashboardItemWidget({required this.item});

  void handlePhoneButton() {
    print("phoneButton clicked");
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          // Navigate to Sameer.dart page
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ClaimProcessing(selectedItem: item),
            ), // Replace SameerPage() with your actual Sameer.dart page class
          );
        },
        child: Container(
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: const BorderSide(
                    width: 2, color: Color.fromARGB(255, 165, 11, 152))),
            elevation: 10,
            color: Colors.blueGrey.shade50,
            margin: EdgeInsets.symmetric(vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // const SizedBox(
                //   height: 20,
                // ),
                // SizedBox(
                //     height: 150,
                //     width: 100,
                //     child: Image.asset(
                //       'lib/assests/civic.jpg',
                //       // fit: BoxFit.fitHeight,
                //     )),
                // SizedBox(
                //   width: 10,
                // ),
                Image.asset(
                  ('lib/assests/civic.jpg'),
                  // scale: Checkbox.width,
                  width: 150,
                  // height: 190,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    Text(
                      "${item.requestNumber}",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('${item.customerName}'),
                    Text('${item.carNumber}'),
                    Text('${item.carName}'),
                    Text(
                      'Maruti Suzuki Authorised Service Center',
                      style: TextStyle(fontSize: 10),
                      // softWrap: false,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    // const Expanded(
                    //   child: Row(
                    //     children: [
                    //       Flexible(
                    //         child: Text(
                    //           'Maruti Suzuki Authorised Service Center',
                    //           softWrap: false,
                    //           maxLines: 4,
                    //           overflow: TextOverflow.ellipsis,
                    //           style: TextStyle(
                    //               fontSize: 14,
                    //               letterSpacing: 2,
                    //               fontWeight: FontWeight.bold,
                    //               color: Color.fromRGBO(0, 0, 0, 1)),
                    //         ),
                    //       )
                    //     ],
                    //   ),
                    // ),
                    Text(
                      '${item.status}',
                      style: TextStyle(color: Colors.red.shade300),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Icon(Icons.phone),
                        IconButton(
                            onPressed: handlePhoneButton,
                            icon: Icon(Icons.phone)),
                        SizedBox(width: 10),
                        IconButton(
                            onPressed: handlePhoneButton,
                            icon: Icon(Icons.mail_outline)),
                        // Icon(Icons.mail_outline),
                        SizedBox(width: 10),
                        IconButton(
                            onPressed: handlePhoneButton,
                            icon: Icon(Icons.message_outlined)),
                        // Icon(Icons.message_outlined),
                      ],
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
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
