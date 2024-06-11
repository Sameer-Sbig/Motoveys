import 'package:flutter/material.dart';
import 'package:motoveys/commonFunction.dart';
import 'package:motoveys/models/dataItemModel.dart';

class ClaimInformationScreen extends StatelessWidget {
  final ClaimsDashboardItems selectedItems;
  const ClaimInformationScreen({required this.selectedItems});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  CommonFunctions.buildViewOnly(context, 'Claim Intimation Date & Time'),
                  CommonFunctions.buildViewOnly(context, 'Loss Intimation Date & Time'),
                  CommonFunctions.textField(
                      context, 'Processing Office',2),
                      // dropdown below with option yes or no
                  CommonFunctions.buildViewOnly(context, 'TP Loss'),
                  CommonFunctions.buildViewOnly(
                      context, 'TP Remark'),
                  
                  

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
