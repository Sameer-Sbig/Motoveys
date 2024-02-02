import 'package:flutter/material.dart';
import 'package:motoveys/Screens/uploadDocumentMainScreen.dart';
import 'package:motoveys/models/dataItemModel.dart';
// import 'screen2.dart'; // Import the screen2 file
// import 'screen3.dart'; // Import the screen3 file
import './uploadDocumentScreen.dart'; // Import the uploadDocumentScreen file

class ClaimProcessing extends StatelessWidget {
  final ClaimsDashboardItems selectedItem;

  ClaimProcessing({required this.selectedItem});

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
            Text("Request Number: ${selectedItem.requestNumber}")
          ],
        ),
        backgroundColor: Color(0xFF610361),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SizedBox(
          height: MediaQuery.of(context).size.height /
              5, // Set the desired fraction of the screen height
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: _buildElevatedButton(context, "Upload Documents", () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            UploadDocumentMainScreen(selectedItem: selectedItem)
                        // UploadDocumentScreen()
                        ),
                  );
                }, Icons.upload_file_outlined),
              ),
              SizedBox(width: 16.0),
              Expanded(
                child: _buildElevatedButton(context, "Survey Details Document",
                    () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => Screen2()),
                  // );
                }, Icons.playlist_add_outlined),
              ),
              SizedBox(width: 16.0),
              Expanded(
                child:
                    _buildElevatedButton(context, "Policy & Claim Details", () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => Screen3()),
                  // );
                }, Icons.perm_device_info),
              ),
              // SizedBox(width: 16),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildElevatedButton(BuildContext context, String buttonText,
    VoidCallback onPressed, IconData iconData) {
  return LayoutBuilder(
    builder: (context, constraints) {
      double buttonWidth = constraints.maxWidth;

      if (MediaQuery.of(context).size.width >= 600) {
        buttonWidth = constraints.maxWidth * 0.5;
      }

      return ElevatedButton(
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
      );
    },
  );
}



// import 'package:flutter/material.dart';
// import 'package:motoveys/models/dataItemModel.dart';

// class ClaimProcessing extends StatelessWidget {
//   final ClaimsDashboardItems selectedItem;

//   ClaimProcessing({required this.selectedItem});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Text('Claim Processing'),
//             const SizedBox(height: 5),
//             Text("Request Number: ${selectedItem.requestNumber}")
//           ],
//         ),
//         backgroundColor: Color(0xFFB114B1),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Row(
//           children: [
//             Expanded(
//               child: _buildElevatedButton(context, "Upload Documents"),
//             ),
//             SizedBox(width: 16.0), // Add spacing between buttons
//             Expanded(
//               child: _buildElevatedButton(context, "Button 2"),
//             ),
//             SizedBox(width: 16.0), // Add spacing between buttons
//             Expanded(
//               child: _buildElevatedButton(context, "Button 3"),
//             ),
//             SizedBox(width: 16),

//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildElevatedButton(BuildContext context, String buttonText) {
//     return LayoutBuilder(
//       builder: (context, constraints) {
//         double buttonWidth = constraints.maxWidth;

//         // Adjust button width based on screen size
//         if (MediaQuery.of(context).size.width >= 600) {
//           buttonWidth = constraints.maxWidth * 0.5; // 50% of available width
//         }

//         return ElevatedButton.icon(
//           onPressed: () {
//             print("$buttonText pressed");
//           },
//           icon: const Icon(
//             Icons.upload_file_outlined,
//             size: 50,
//             color: Color(0xFFB114B1),
//           ),
//           style: ElevatedButton.styleFrom(
//             primary: Colors.blueGrey.shade50,
//             onPrimary: Colors.black,
//             padding: const EdgeInsets.all(20),
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(10.0),
//             ),
//             minimumSize: Size(buttonWidth, 0), // Set the minimum width
//           ),
//           label: Text(buttonText),
//         );
//       },
//     );
//   }
// }



//////// ***********************************************************************************************************??????????????????????????????
//   Widget _buildElevatedButton(String buttonText) {
//     return ElevatedButton.icon(
//       onPressed: () {
//         print("$buttonText pressed");
//       },
//       icon: const Icon(
//         Icons.upload_file_outlined,
//         size: 50,
//         color: Color(0xFFB114B1),
//       ),
//       style: ElevatedButton.styleFrom(
//         primary: Colors.blueGrey.shade50,
//         onPrimary: Colors.black,
//         padding: const EdgeInsets.all(20),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(10.0),
//         ),
//       ),
//       label: Text(buttonText),
//     );
//   }
// }