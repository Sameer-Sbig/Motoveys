import 'package:flutter/material.dart';

class UploadDocumentScreen extends StatelessWidget {
  const UploadDocumentScreen({super.key});

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
        body: ListView.builder(itemBuilder: (context, index) {
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
        }));
  }
}
