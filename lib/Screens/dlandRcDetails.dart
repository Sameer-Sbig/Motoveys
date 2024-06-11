// import 'package:flutter/material.dart';
// import 'package:motoveys/commonFunction.dart';

// class DlRCDetails extends StatefulWidget {
//   @override
//   State<DlRCDetails> createState() => _DlRcDetails();
// }

// class _DlRcDetails extends State<DlRCDetails> {
//   final myController = TextEditingController();

//   @override
//   void dispose() {
//     // Clean up the controller when the widget is disposed.
//     myController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final widthAllowed = MediaQuery.of(context).size.width / 1.0;
//     return Scaffold(
//       appBar: AppBar(
//         title: const Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [Text('DL & RC Details'), Text('Claim Number')],
//         ),
//         backgroundColor: const Color(0xFF610361),
//       ),
//       body: Stack(children: [
//         Expanded(
//           child: SingleChildScrollView(
//             child: Stack(children: [
//               Padding(
//                 padding: const EdgeInsets.all(10.0),
//                 child: Column(
//                   children: [
//                     CommonFunctions.buildViewOnly(context, 'Driver Name'),
//                     CommonFunctions.buildViewOnly(
//                         context, 'MDL Validity From Date'),
//                     CommonFunctions.buildViewOnly(
//                         context, 'MDL Validity To Date'),
//                     CommonFunctions.buildViewOnly(context, 'Current Status'),
//                     CommonFunctions.buildViewOnly(context, 'Date of Expiry'),
//                     CommonFunctions.buildViewOnly(context, 'Date of issue'),
//                     CommonFunctions.buildViewOnly(
//                         context, 'Initial Date of issue'),
//                     CommonFunctions.buildViewOnly(context, 'License Number'),
//                     CommonFunctions.buildViewOnly(context, 'Name'),
//                     CommonFunctions.buildViewOnly(context, 'Vehicle Classes')
//                   ],
//                 ),
//               ),
//             ]),
//           ),
//         ),
//         Positioned(
//           bottom: 0,
//           left: 100,
//           right: 100,
//           child: Container(
//             child: ElevatedButton(
//                style: ElevatedButton.styleFrom(
//             backgroundColor: Color(0xFF610361),
//             foregroundColor: Colors.white,
//           ),

//                 onPressed: () {
//                   print('Submit Clicked');
//                 },
//                 child: Text('Submit')),
//           ),
//         )
//       ]),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:motoveys/commonFunction.dart';

class DlRCDetails extends StatefulWidget {
  @override
  State<DlRCDetails> createState() => _DlRcDetails();
}

class _DlRcDetails extends State<DlRCDetails> {
  final myController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final widthAllowed = MediaQuery.of(context).size.width / 1.0;
    return Scaffold(
      appBar: AppBar(
        title: const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'DL & RC Details',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            // Text(
            //   'Claim Number',
            //   style: TextStyle(
            //     color: Colors.white,
            //   ),
            // )
          ],
        ),
        backgroundColor: const Color(0xFF610361),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    CommonFunctions.buildViewOnly(context, 'Driver Name'),
                    CommonFunctions.buildViewOnly(
                        context, 'MDL Validity From Date'),
                    CommonFunctions.buildViewOnly(
                        context, 'MDL Validity To Date'),
                    CommonFunctions.buildViewOnly(context, 'Current Status'),
                    CommonFunctions.buildViewOnly(context, 'Date of Expiry'),
                    CommonFunctions.buildViewOnly(context, 'Date of issue'),
                    CommonFunctions.buildViewOnly(
                        context, 'Initial Date of issue'),
                    CommonFunctions.buildViewOnly(context, 'License Number'),
                    CommonFunctions.buildViewOnly(context, 'Name'),
                    CommonFunctions.buildViewOnly(context, 'Vehicle Classes')
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 100.0, vertical: 10.0),
            child: SizedBox(
              width: 200,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF610361),
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  print('Submit Clicked');
                },
                child: Text('Submit'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
