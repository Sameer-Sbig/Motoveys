import 'package:flutter/material.dart';
import 'package:motoveys/models/dataItemModel.dart';

class ClaimInformationScreen extends StatelessWidget {
  final ClaimsDashboardItems selectedItems;
  const ClaimInformationScreen({required this.selectedItems});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(
      child: Padding(
        padding: EdgeInsets.only(top: 20),
        child: Table(
          border: TableBorder.all(color: Colors.black, width: 0.5),
          children: [
            TableRow(children: [
              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Text(
                  'Master Claim Number',
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
                  'Loss Day',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Text(
                  "22/01/2024",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              // Text(selectedItems.requestNumber)
            ]),
            TableRow(children: [
              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Text(
                  'Loss Time',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Text(
                  "18:40",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              // Text(selectedItems.requestNumber)
            ]),
            TableRow(children: [
              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Text(
                  'Loss Location',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Text(
                  "Mumbai",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              // Text(selectedItems.requestNumber)
            ]),
            TableRow(children: [
              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Text(
                  'Loss Description',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Text(
                  "Car Bumper Damaged",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              // Text(selectedItems.requestNumber)
            ]),
            TableRow(children: [
              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Text(
                  'Registered By:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Text(
                  "Ram Ram",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              // Text(selectedItems.requestNumber)
            ]),
            TableRow(children: [
              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Text(
                  'Claim Registration Date',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Text(
                  "25/01/2024",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              // Text(selectedItems.requestNumber)
            ]),
            TableRow(children: [
              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Text(
                  'Claim Notification Date',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Text(
                  "24/01/2023",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              // Text(selectedItems.requestNumber)
            ]),
            TableRow(children: [
              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Text(
                  'Registered Authority',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Text(
                  "Claims Officer Non Motor",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              // Text(selectedItems.requestNumber)
            ]),
          ],
        ),
      ),
    );
  }
}
