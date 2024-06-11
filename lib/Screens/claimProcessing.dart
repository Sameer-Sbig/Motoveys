import 'package:flutter/material.dart';
import 'package:motoveys/Screens/dlandRcDetails.dart';
import 'package:motoveys/Screens/drivingLicense.dart';
import 'package:motoveys/Screens/invoiceDetails.dart';
import 'package:motoveys/Screens/policy&ClaimDetails.dart';
import 'package:motoveys/Screens/surveyorDetailForm.dart';
import 'package:motoveys/Screens/surveyorDetails.dart';
import 'package:motoveys/Screens/surveyorDetailsMain.dart';
import 'package:motoveys/Screens/uploadDocumentMainScreen.dart';
import 'package:motoveys/Screens/uploadDocumentOld.dart';
import 'package:motoveys/models/dataItemModel.dart';
// import 'screen2.dart'; // Import the screen2 file
// import 'screen3.dart'; // Import the screen3 file
import './uploadDocumentScreen.dart'; // Import the uploadDocumentScreen file

class ClaimProcessing extends StatelessWidget {
  final ClaimsDashboardItems selectedItem;

  ClaimProcessing({required this.selectedItem});
// *************************** remember to manage some booleans to update color based on form submission ******************
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Claim Processing',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              "Request No: ${selectedItem.requestNumber}",
              style: TextStyle(color: Colors.white, fontSize: 14),
            )
          ],
        ),
        backgroundColor: const Color(0xFF610361),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Wrap(
                spacing: 15,
                runSpacing: 35,
                alignment: WrapAlignment.center,
                children: [
                  _buildElevatedButton(context, 'Policy & Claim Details', () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                PolicyDetails(selectedItem: selectedItem)));
                  }, Icons.perm_device_info, Colors.transparent),
                  _buildElevatedButton(context, 'Surveyor Processing Details',
                      () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SurveyorDataForm()));
                  }, Icons.playlist_add_outlined, Colors.transparent),
                  _buildElevatedButton(context, 'Upload Documents', () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => uploadDocumentsCategory(
                                  selectedItem: selectedItem,
                                )
                            // UploadDocuments1()
                            ));
                  }, Icons.upload_file_outlined, Colors.transparent),
                  _buildElevatedButton(context, 'DL & RC Details', () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DlRCDetails()));
                  }, Icons.domain_verification_rounded, Colors.transparent),
                  _buildElevatedButton(context, 'Invoice Details', () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => InvoiceDetails()));
                  }, Icons.blinds_closed_rounded, Colors.transparent),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                  color: const Color(0xFF610361),
                  width: 1.8,
                )),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'VB64 Compliance',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Delay in Intimation',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Vehicle Age',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Close Proximity',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'NCB Falsification/PYP Invalid',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Text('No'),
                          Text('0'),
                          Text('6 Years'),
                          Text('63'),
                          Text('-/-'),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// Widget _buildElevatedButton(BuildContext context, String buttonText,
//     VoidCallback onPressed, IconData iconData) {
//   return LayoutBuilder(
//     builder: (context, constraints) {
//       double buttonWidth = constraints.maxWidth;

//       if (MediaQuery.of(context).size.width >= 600) {
//         buttonWidth = constraints.maxWidth * 0.5;
//       }

//       return ElevatedButton(
//         onPressed: onPressed,
//         style: ElevatedButton.styleFrom(
//           primary: Colors.blueGrey.shade50,
//           onPrimary: Colors.black,
//           padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(10.0),
//           ),
//           minimumSize: Size(buttonWidth, 0),
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(
//               iconData,
//               size: 50,
//               color: Color(0xFF610361),
//             ),
//             SizedBox(height: 8), // Adjust the spacing between icon and text
//             Text(
//               buttonText,
//               textAlign: TextAlign.center,
//               style: TextStyle(fontSize: 12),
//             ),
//           ],
//         ),
//       );
//     },
//   );
// }

Widget _buildElevatedButton(BuildContext context, String buttonText,
    VoidCallback onPressed, IconData iconData, Color triangleColor) {
  return LayoutBuilder(
    builder: (context, constraints) {
      // double buttonWidth = constraints.maxWidth;

      // if (MediaQuery.of(context).size.width >= 600) {
      //   buttonWidth = constraints.maxWidth * 0.5;
      // }
      double availableWidth = MediaQuery.of(context).size.width;
      double buttonWidth = availableWidth / 6;
      return Stack(
        alignment: Alignment.topRight,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.25,
            height: MediaQuery.of(context).size.height * 0.2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                  
                  color: Color.fromARGB(255, 105, 80, 216).withOpacity(0.4),
                  // spreadRadius: 5,
                  blurRadius: 4,
                   offset: Offset(4, 8), // changes position of shadow
                ),
              ],
            ),
            child: ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                // primary: Colors.blueGrey.shade50,
                // onPrimary: Colors.black,
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                minimumSize: Size(buttonWidth, 0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    iconData,
                    size: 40,
                    color: Color(0xFF610361),
                  ),
                  SizedBox(
                      height: 8), // Adjust the spacing between icon and text
                  Text(
                    buttonText,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: CustomPaint(
              size: Size(20, 20), // Adjust the size of the triangle as needed
              painter: TrianglePainter(color: triangleColor),
            ),
          ),
        ],
      );
    },
  );
}

class TrianglePainter extends CustomPainter {
  final Color color;

  TrianglePainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = color;

    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
