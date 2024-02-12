import 'dart:io';
import 'package:flutter/material.dart';
import 'package:motoveys/models/dataItemModel.dart';
// ignore: depend_on_referenced_packages
import 'package:path_provider/path_provider.dart';
// Import path_provider

class UploadDocumentScreen extends StatelessWidget {
  final ClaimsDashboardItems selectedItem; // Define selectedItem as a field

  const UploadDocumentScreen({Key? key, required this.selectedItem})
      : super(key: key);

  Future<void> _saveFile(File file, String documentName) async {
    final directory = await getApplicationDocumentsDirectory();
    final folderPath = directory.path +
        '/${selectedItem}/'; // Access selectedItem's properties
    final filePath = folderPath + documentName + '.jpg';
    final newFile = File(filePath); // Rename this variable to avoid conflict
    await newFile.writeAsBytes(await file.readAsBytes());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Upload Documents'),
          ],
        ),
        backgroundColor: Color(0xFF610361),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Column(
            children: [
              Row(
                children: [
                  Text(
                    "Hello add form elements below ",
                    style: TextStyle(backgroundColor: Colors.blueGrey.shade200),
                  )
                ],
              )
            ],
          );
        },
      ),
    );
  }
}



















// import 'package:flutter/material.dart';

// class UploadDocumentScreen extends StatelessWidget {
//   const UploadDocumentScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text('Upload Documents'),
//             ],
//           ),
//           backgroundColor: Color(0xFF610361),
//         ),
//         body: ListView.builder(itemBuilder: (context, index) {
//           return Column(
//             children: [
//               Row(
//                 children: [
//                   Text(
//                     "Hello add form elements below ",
//                     style: TextStyle(backgroundColor: Colors.blueGrey.shade200),
//                   )
//                 ],
//               )
//             ],
//           );
//         }));
//   }
// }
