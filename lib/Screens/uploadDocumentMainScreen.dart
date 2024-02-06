import 'package:flutter/material.dart';
import 'package:motoveys/models/dataItemModel.dart';

class UploadDocumentMainScreen extends StatefulWidget {
  final ClaimsDashboardItems selectedItem;
  const UploadDocumentMainScreen({required this.selectedItem});

  @override
  State<UploadDocumentMainScreen> createState() {
    return _UploadDocumentsScreen();
  }
}

class _UploadDocumentsScreen extends State<UploadDocumentMainScreen> {
  Future pickFileFunction() async {
    // final result = await
    print("in pickfile function");
  }

  @override
  Widget build(BuildContext context) {
    double widthAllowed = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('Claim Processing'),
              const SizedBox(height: 5),
              Text(widget.selectedItem.requestNumber)
            ],
          ),
          backgroundColor: Color(0xFF610361),
        ),
        body: Container(
          decoration: const BoxDecoration(
              border:
                  Border(bottom: BorderSide(color: Colors.grey, width: 1.0))),
          width: widthAllowed,
          padding: EdgeInsets.only(left: 10),
          // child: Row(
          //   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   // mainAxisSize: widthAllowed,
          //   children: [
          //     const Text(
          //       "Ganpati Bappa Morya",
          //       style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          //     ),
          //     SizedBox(width: widthAllowed / 2.5),
          //     // FloatingActionButton(onPressed: pickFileFunction)
          //     IconButton(
          //       onPressed: pickFileFunction,
          //       icon: Icon(Icons.upload_file),
          //     ),

          //     IconButton(
          //       onPressed: pickFileFunction,
          //       icon: Icon(Icons.camera_alt_outlined),
          //     ),
          //     IconButton(
          //       onPressed: pickFileFunction,
          //       icon: Icon(Icons.photo_size_select_actual_outlined),
          //     )
          //   ],
          // ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Cancel",
                          style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        )),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Upload",
                          style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        )),
                    SizedBox(
                      width: 10,
                    )
                  ],
                ),
                _buildRow("Claim Form", widthAllowed),
                _buildRow("Crash Photos", widthAllowed),
                _buildRow("Driving License", widthAllowed),
                _buildRow("Estimate", widthAllowed),
                _buildRow("KYC Doc Address Proof", widthAllowed),
                _buildRow("KYC Doc Id Proof", widthAllowed),
                _buildRow("KYC Recent Photo", widthAllowed),
                _buildRow("KYC First Impression-Internal", widthAllowed),
                _buildRow("RC Book", widthAllowed),
                _buildRow("Repair Bill", widthAllowed),
                _buildRow("Survey Fees Bill", widthAllowed)
              ],
            ),
          ),
        ));
  }

// building  fumctions for building multiple rows
  Widget _buildRow(String text, double givenWidth) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  color: const Color.fromARGB(54, 0, 0, 0), width: 1.5))),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
            // SizedBox(width: givenWidth / 1.9),
            Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: pickFileFunction,
                  icon: Icon(Icons.upload_file),
                ),
                IconButton(
                  onPressed: pickFileFunction,
                  icon: Icon(Icons.camera_alt_outlined),
                ),
                IconButton(
                  onPressed: pickFileFunction,
                  icon: Icon(Icons.photo_size_select_actual_outlined),
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
