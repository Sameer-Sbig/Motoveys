import 'package:flutter/material.dart';
import 'package:motoveys/Screens/claimProcessing.dart';
import 'package:motoveys/commonFunction.dart';
import 'package:motoveys/models/dataItemModel.dart';

class PolicyInformation extends StatelessWidget {
  final ClaimsDashboardItems selectedItems;
  const PolicyInformation({required this.selectedItems});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // return Column(
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   children: [Text(selectedItems.carName)],
    // );
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  CommonFunctions.buildViewOnly(context, 'Policy Number'),
                  CommonFunctions.buildViewOnly(context, 'From Date'),
                  CommonFunctions.buildViewOnly(
                      context, 'Tie up Policy Number'),
                  CommonFunctions.buildViewOnly(context, 'NCB Percentage'),
                  CommonFunctions.buildViewOnly(
                      context, 'IsBreak-In on Policy'),
                  CommonFunctions.buildViewOnly(context, 'NCB Status'),
                  CommonFunctions.buildViewOnly(context, 'IDV'),
                  CommonFunctions.buildViewOnly(context, 'To Date'),
                  CommonFunctions.buildViewOnly(context, 'Insured Name'),
                  CommonFunctions.textField(context, 'Email Id', 2),
                  CommonFunctions.textField(context, 'Contact Number', 2),
                  CommonFunctions.textField(context, 'Mobile Number', 2),
                  CommonFunctions.textField(context, 'Registration Number', 2),
                  CommonFunctions.buildViewOnly(context, 'Registration Date'),
                  CommonFunctions.buildViewOnly(context, 'Chasis Number'),
                  CommonFunctions.buildViewOnly(context, 'Tyres Make and No'),
                  // change below to dropdown button
                  CommonFunctions.buildViewOnly(context, 'Color Type'),
                  CommonFunctions.buildViewOnly(context, 'Vehicle IDV'),
                  CommonFunctions.buildViewOnly(
                      context, 'Year of Manufacturing'),
                  CommonFunctions.buildViewOnly(context, 'Model'),
                  CommonFunctions.buildViewOnly(context, 'Enginee No'),
                  // change below to dropdown button
                  CommonFunctions.buildViewOnly(context, 'Car Color'),
                  CommonFunctions.buildViewOnly(context, 'Blacklist Status'),
                  CommonFunctions.buildViewOnly(context, 'Maker Description'),
                  CommonFunctions.buildViewOnly(context, 'Maker Model'),
                  CommonFunctions.buildViewOnly(context, 'Manufacturing Date'),
                  CommonFunctions.buildViewOnly(context, 'Mobile Number'),
                  CommonFunctions.buildViewOnly(context, 'Owner Name'),
                  CommonFunctions.buildViewOnly(context, 'Owner Number'),
                  CommonFunctions.buildViewOnly(context, 'Excess Clause'),
                  CommonFunctions.buildViewOnly(
                      context, 'Voluntary Excess Clause'),

                   SizedBox(height: 300,)   
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
    );
  }
}

// Widget _buildTableRow(
//     BuildContext context, String tableHeader, String tableChild) {
//   return LayoutBuilder(
//     builder: (context, constraints) {
//       return TableRow(children: [
//         Text(tableHeader),
//         Text(tableChild),
//       ]);
//     },
//   );
// }
