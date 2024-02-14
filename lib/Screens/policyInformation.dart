import 'package:flutter/material.dart';
import 'package:motoveys/Screens/claimProcessing.dart';
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
    return SingleChildScrollView(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Table(
            border: TableBorder.all(color: Colors.black, width: 0.5),
            children: [
              TableRow(children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Text(
                    'Policy Number',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Text(
                    selectedItems.requestNumber,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                // Text(selectedItems.requestNumber)
              ]),
              TableRow(children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Text(
                    'Policy Effective From Date',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Text(
                    selectedItems.requestNumber,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                // Text(selectedItems.requestNumber)
              ]),
              TableRow(children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Text(
                    'Policy Effective To Date',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Text(
                    selectedItems.requestNumber,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                // Text(selectedItems.requestNumber)
              ]),
              TableRow(children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Text(
                    'Product Name',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Text(
                    selectedItems.requestNumber,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                // Text(selectedItems.requestNumber)
              ]),
              TableRow(children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Text(
                    'Policy Type',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Text(
                    selectedItems.requestNumber,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                // Text(selectedItems.requestNumber)
              ]),
              TableRow(children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Text(
                    'Add On',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Text(
                    selectedItems.requestNumber,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                // Text(selectedItems.requestNumber)
              ]),
              TableRow(children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Text(
                    'Vehicle Model',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Text(
                    selectedItems.carName,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                // Text(selectedItems.requestNumber)
              ]),
              TableRow(children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Text(
                    'Vehicle Make',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Text(
                    selectedItems.requestNumber,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                // Text(selectedItems.requestNumber)
              ]),
              TableRow(children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Text(
                    'Chasis Number',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Text(
                    selectedItems.requestNumber,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                // Text(selectedItems.requestNumber)
              ]),
              TableRow(children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Text(
                    'Enginee Number',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Text(
                    selectedItems.requestNumber,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                // Text(selectedItems.requestNumber)
              ]),
              TableRow(children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Text(
                    'Manufacturing Year',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Text(
                    selectedItems.requestNumber,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                // Text(selectedItems.requestNumber)
              ]),
              TableRow(children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Text(
                    'NCP Falsification/PYP Invalid',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Text(
                    selectedItems.requestNumber,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                // Text(selectedItems.requestNumber)
              ]),
            ],
          ),
        ),
      ),
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
