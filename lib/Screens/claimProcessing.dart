import 'package:flutter/material.dart';
import 'package:motoveys/Screens/dlandRcDetails.dart';
import 'package:motoveys/Screens/drivingLicense.dart';
import 'package:motoveys/Screens/policy&ClaimDetails.dart';
import 'package:motoveys/Screens/surveyorDetails.dart';
import 'package:motoveys/Screens/surveyorDetailsMain.dart';
import 'package:motoveys/Screens/uploadDocumentMainScreen.dart';
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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Claim Processing'),
            const SizedBox(height: 5),
            Text("Request No: ${selectedItem.requestNumber}")
          ],
        ),
        backgroundColor: const Color(0xFF610361),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height /
                    5, // Set the desired fraction of the screen height
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child:
                          _buildElevatedButton(context, "Upload Documents", () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => UploadDocumentMainScreen(
                                  selectedItem: selectedItem)
                              // UploadDocumentScreen()
                              ),
                        );
                      }, Icons.upload_file_outlined, Colors.green),
                    ),
                    const SizedBox(width: 16.0),
                    Expanded(
                      child: _buildElevatedButton(
                        context,
                        "Surveyor Processing Details",
                        () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SurveyorDetailsMain(
                                      selectedItem: selectedItem,
                                    )),
                          );
                        },
                        Icons.playlist_add_outlined,
                        Colors.red,
                      ),
                    ),
                    const SizedBox(width: 16.0),
                    Expanded(
                      child: _buildElevatedButton(
                        context,
                        "Policy & Claim Details",
                        () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    PolicyDetails(selectedItem: selectedItem)),
                          );
                        },
                        Icons.perm_device_info,
                        Colors.red,
                      ),
                    ),
                    // SizedBox(width: 16),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                        child: _buildElevatedButton(
                      context,
                      'Claim Histoy',
                      () {
                        print('Claim History Pressed');
                      },
                      Icons.history,
                      Colors.red,
                    )),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                        child: _buildElevatedButton(
                      context,
                      'Insured Details',
                      () {},
                      Icons.person_3_outlined,
                      Colors.red,
                    )),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                        child: _buildElevatedButton(
                      context,
                      'DL & \n RC Details',
                      () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => drivingLicense(
                                  // selectedItem: selectedItem,
                                  )),
                        );
                      },
                      Icons.domain_verification_rounded,
                      Colors.red,
                    ))
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                        child: _buildElevatedButton(
                            context, 'Point of \n Impact', () {
                      print('Claim History Pressed');
                    }, Icons.car_crash_outlined, Colors.green)),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                        child: _buildElevatedButton(
                      context,
                      'CP Loss',
                      () {},
                      Icons.note_alt_outlined,
                      Colors.red,
                    )),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                        child: _buildElevatedButton(
                      context,
                      'Claim Tracker',
                      () {},
                      Icons.mobile_friendly_outlined,
                      Colors.transparent,
                    ))
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                        child: _buildElevatedButton(context, 'Invoice Details',
                            () {
                      print('Claim History Pressed');
                    }, Icons.blinds_closed_rounded, Colors.grey)),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                        child: _buildElevatedButton(
                      context,
                      'Computation Summary',
                      () {},
                      Icons.summarize_outlined,
                      Colors.red,
                    )),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: _buildElevatedButton(
                        context,
                        'CIMA Details',
                        () {},
                        Icons.summarize_outlined,
                        Colors.transparent,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
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
      double buttonWidth = constraints.maxWidth;

      if (MediaQuery.of(context).size.width >= 600) {
        buttonWidth = constraints.maxWidth * 0.5;
      }

      return Stack(
        alignment: Alignment.topRight,
        children: [
          ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              primary: Colors.blueGrey.shade50,
              onPrimary: Colors.black,
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              minimumSize: Size(buttonWidth, 0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  iconData,
                  size: 50,
                  color: Color(0xFF610361),
                ),
                SizedBox(height: 8), // Adjust the spacing between icon and text
                Text(
                  buttonText,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ],
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
