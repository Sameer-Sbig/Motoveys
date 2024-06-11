import 'dart:io';

import 'package:flutter/material.dart';
import 'package:motoveys/models/dataItemModel.dart';
import 'package:image_picker/image_picker.dart';

class uploadDocumentsCategory extends StatefulWidget {
  final ClaimsDashboardItems selectedItem;
  const uploadDocumentsCategory({required this.selectedItem});

  @override
  State<uploadDocumentsCategory> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<uploadDocumentsCategory> {
  List<File?> _selectedImages = List.generate(30, (index) => null);

  List<Map<String, dynamic>> crashPhotos = [
    {'title': 'Crash', 'file': []},
    {'title': 'Kept Open', 'file': []},
    {'title': 'Other', 'file': []},
    {'title': 'Reinspection', 'file': []},
    {'title': 'Salvage', 'file': []},
    {'title': 'Spot_Photo', 'file': []},
  ];

  List<Map<String, dynamic>> photoTitlesWithFiles = [
    {'title': 'Bank Mandate_NEFT details', 'file': []},
    {'title': 'Chasis/Enginee Print', 'file': []},
    {'title': 'Claim Form', 'file': []},
    {'title': 'Closure Non Submission', 'file': []},
    {'title': 'Consent Letter', 'file': []},
    {'title': 'Consent Letter-NOS', 'file': []},
    {'title': 'Consent Non Settlement', 'file': []},
    {'title': 'Death Certificate', 'file': []},
    {'title': 'Deed of Subrogation', 'file': []},
    {'title': 'Discharge Voucher', 'file': []},
    {'title': 'Doc. Request Letter', 'file': []},
    {'title': 'Driving License', 'file': []},
    {'title': 'Estimate', 'file': []},
    {'title': 'Final Reminder', 'file': []},
    {'title': 'Final Report-Khatma Report', 'file': []},
    {'title': 'FIR', 'file': []},
    {'title': 'Fitness Certificate', 'file': []},
    {'title': 'Flash Report', 'file': []},
    {'title': 'Indemnity Bond', 'file': []},
    {'title': 'Insured KYC_AML documents', 'file': []},
  ];

  List<Map<String, dynamic>> otherFiles = [
    {'title': 'Postmortem Report', 'file': []},
    {'title': 'Supplementary_Survey_Report', 'file': []},
    {'title': 'Survey Report', 'file': []},
    {'title': 'Untrace Report', 'file': []},
  ];
  String? dropDown1;
  String? dropDown2;
  String? dropDown3;

  void delete(category, index) {
    if (category == 'otherFiles') {
      setState(() {
        otherFiles
            .where((i) => i['title'] == dropDown3)
            .toList()[0]['file']
            .removeAt(index);
      });
    }

    if (category == 'photoTitlesWithFiles') {
      setState(() {
        photoTitlesWithFiles
            .where((i) => i['title'] == dropDown2)
            .toList()[0]['file']
            .removeAt(index);
      });
    }
    if (category == 'crashPhotos') {
      setState(() {
        crashPhotos
            .where((i) => i['title'] == dropDown1)
            .toList()[0]['file']
            .removeAt(index);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double widthAllowed = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Upload Documents Screen' , style: TextStyle(color: Colors.white , fontSize: 18),), 
            const SizedBox(height: 5),
            Text(widget.selectedItem.requestNumber , style: TextStyle(color: Colors.white , fontSize: 14),)
          ],
        ),
        backgroundColor: const Color(0xFF610361),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                  width: double.infinity,
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    border: BorderDirectional(
                                        bottom: BorderSide(
                                            color: const Color(0xFF610361),
                                            width: 2))),
                                child: SizedBox(
                                    width: double.infinity,
                                    child: Text(
                                      'Accident Photos',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )),
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: DropdownButton(
                                        isExpanded: true,
                                        value: dropDown1,
                                        items: crashPhotos.map((element) {
                                          return DropdownMenuItem(
                                            value: element['title'],
                                            child: Text(element['title']),
                                          );
                                        }).toList(),
                                        onChanged: (value) {
                                          print(value);

                                          setState(() {
                                            dropDown1 = value as String;
                                          });
                                        }),
                                  ),
                                  IconButton(
                                      onPressed: () async {
                                        final picker = ImagePicker();
                                        final pickedFile =
                                            await picker.pickImage(
                                                source: ImageSource.camera);
                                        if (pickedFile != null) {
                                          setState(() {
                                            print(pickedFile.path);
                                            crashPhotos
                                                .where((i) =>
                                                    i['title'] == dropDown1)
                                                .toList()[0]['file']
                                                .add(File(pickedFile.path));
                                          });
                                        }
                                      },
                                      icon: Icon(Icons.camera_alt_outlined))
                                ],
                              ),
                            ],
                          ),
                          GridView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3),
                            itemCount: crashPhotos
                                    .where((i) => i['title'] == dropDown1)
                                    .toList()
                                    .isNotEmpty // Check if the list is not empty
                                ? crashPhotos
                                    .where((i) => i['title'] == dropDown1)
                                    .toList()[0]['file']
                                    .length
                                : 0,
                            itemBuilder: (context, index) {
                              if (crashPhotos
                                  .where((i) => i['title'] == dropDown1)
                                  .toList()
                                  .isEmpty) {
                                return Container();
                              }
                              return Container(
                                margin: const EdgeInsets.all(10),
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black87,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color.fromARGB(255, 153, 150, 150),
                                      offset: Offset(
                                        5.0,
                                        5.0,
                                      ), //Offset
                                      blurRadius: 10.0,
                                      spreadRadius: 2.0,
                                    ), //BoxShadow
                                    BoxShadow(
                                      color: Colors.white,
                                      offset: Offset(0.0, 0.0),
                                      blurRadius: 0.0,
                                      spreadRadius: 0.0,
                                    ), //BoxShadow
                                  ],
                                ),
                                child: Stack(children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height,
                                    width: double.infinity,
                                    child: Image.file(
                                      crashPhotos
                                          .where((i) => i['title'] == dropDown1)
                                          .toList()[0]['file'][index],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Positioned(
                                    right: 0,
                                    top: 0,
                                    child: IconButton(
                                        onPressed: () {
                                          // deleteImage(index);
                                          // print('Delete button pressed');
                                          delete('crashPhotos', index);
                                        },
                                        icon: Icon(
                                          Icons.delete,
                                          color: Colors.redAccent.shade700,
                                        )),
                                  ),
                                ]),
                              );
                            },
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    border: BorderDirectional(
                                        bottom: BorderSide(
                                            color: const Color(0xFF610361),
                                            width: 2))),
                                child: SizedBox(
                                    width: double.infinity,
                                    child: Text(
                                      'Document Photos',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )),
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: DropdownButton(
                                        isExpanded: true,
                                        value: dropDown2,
                                        items:
                                            photoTitlesWithFiles.map((element) {
                                          return DropdownMenuItem(
                                            value: element['title'],
                                            child: Text(element['title']),
                                          );
                                        }).toList(),
                                        onChanged: (value) {
                                          print(value);

                                          setState(() {
                                            dropDown2 = value as String;
                                          });
                                        }),
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.camera_alt_outlined),
                                    onPressed: () async {
                                      final picker = ImagePicker();
                                      final pickedFile = await picker.pickImage(
                                          source: ImageSource.camera);
                                      if (pickedFile != null) {
                                        setState(() {
                                          print(pickedFile.path);
                                          photoTitlesWithFiles
                                              .where((i) =>
                                                  i['title'] == dropDown2)
                                              .toList()[0]['file']
                                              .add(File(pickedFile.path));
                                        });
                                      }
                                    },
                                  )
                                ],
                              ),
                            ],
                          ),
                          GridView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3),
                            itemCount: photoTitlesWithFiles
                                    .where((i) => i['title'] == dropDown2)
                                    .toList()
                                    .isNotEmpty // Check if the list is not empty
                                ? photoTitlesWithFiles
                                    .where((i) => i['title'] == dropDown2)
                                    .toList()[0]['file']
                                    .length
                                : 0,
                            itemBuilder: (context, index) {
                              if (photoTitlesWithFiles
                                  .where((i) => i['title'] == dropDown2)
                                  .toList()
                                  .isEmpty) {
                                return Container();
                              }
                              return Container(
                                margin: const EdgeInsets.all(10),
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black87,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color.fromARGB(255, 153, 150, 150),
                                      offset: Offset(
                                        5.0,
                                        5.0,
                                      ), //Offset
                                      blurRadius: 10.0,
                                      spreadRadius: 2.0,
                                    ), //BoxShadow
                                    BoxShadow(
                                      color: Colors.white,
                                      offset: Offset(0.0, 0.0),
                                      blurRadius: 0.0,
                                      spreadRadius: 0.0,
                                    ), //BoxShadow
                                  ],
                                ),
                                child: Stack(children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height,
                                    width: double.infinity,
                                    child: Image.file(
                                      photoTitlesWithFiles
                                          .where((i) => i['title'] == dropDown2)
                                          .toList()[0]['file'][index],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Positioned(
                                    right: 0,
                                    top: 0,
                                    child: IconButton(
                                        onPressed: () {
                                          // deleteImage(index);
                                          // print('Delete button pressed');
                                          delete('photoTitlesWithFiles', index);
                                        },
                                        icon: Icon(
                                          Icons.delete,
                                          color: Colors.redAccent.shade700,
                                        )),
                                  ),
                                ]),
                              );
                            },
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    border: BorderDirectional(
                                        bottom: BorderSide(
                                            color: const Color(0xFF610361),
                                            width: 2))),
                                child: SizedBox(
                                    width: double.infinity,
                                    child: Text(
                                      'Other Files',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )),
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: DropdownButton(
                                        isExpanded: true,
                                        value: dropDown3,
                                        items: otherFiles.map((element) {
                                          return DropdownMenuItem(
                                            value: element['title'],
                                            child: Text(element['title']),
                                          );
                                        }).toList(),
                                        onChanged: (value) {
                                          print(value);

                                          setState(() {
                                            dropDown3 = value as String;
                                          });
                                        }),
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.camera_alt_outlined),
                                    onPressed: () async {
                                      final picker = ImagePicker();
                                      final pickedFile = await picker.pickImage(
                                          source: ImageSource.camera);
                                      if (pickedFile != null) {
                                        setState(() {
                                          print(pickedFile.path);
                                          otherFiles
                                              .where((i) =>
                                                  i['title'] == dropDown3)
                                              .toList()[0]['file']
                                              .add(File(pickedFile.path));
                                        });
                                      }
                                    },
                                  )
                                ],
                              ),
                            ],
                          ),
                          GridView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3),
                            itemCount: otherFiles
                                    .where((i) => i['title'] == dropDown3)
                                    .toList()
                                    .isNotEmpty // Check if the list is not empty
                                ? otherFiles
                                    .where((i) => i['title'] == dropDown3)
                                    .toList()[0]['file']
                                    .length
                                : 0,
                            itemBuilder: (context, index) {
                              if (otherFiles
                                  .where((i) => i['title'] == dropDown3)
                                  .toList()
                                  .isEmpty) {
                                return Container();
                              }
                              return Container(
                                margin: const EdgeInsets.all(10),
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black87,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color.fromARGB(255, 153, 150, 150),
                                      offset: Offset(
                                        5.0,
                                        5.0,
                                      ), //Offset
                                      blurRadius: 10.0,
                                      spreadRadius: 2.0,
                                    ), //BoxShadow
                                    BoxShadow(
                                      color: Colors.white,
                                      offset: Offset(0.0, 0.0),
                                      blurRadius: 0.0,
                                      spreadRadius: 0.0,
                                    ), //BoxShadow
                                  ],
                                ),
                                child: Stack(children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height,
                                    width: double.infinity,
                                    child: Image.file(
                                      otherFiles
                                          .where((i) => i['title'] == dropDown3)
                                          .toList()[0]['file'][index],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Positioned(
                                    right: 0,
                                    top: 0,
                                    child: IconButton(
                                        onPressed: () {
                                          //deleteImage(index);
                                          // print('Delete button pressed');
                                          delete('otherFiles', index);
                                        },
                                        icon: Icon(
                                          Icons.delete,
                                          color: Colors.redAccent.shade700,
                                        )),
                                  ),
                                ]),
                              );
                            },
                          ),
                        ],
                      )
                    ],
                  )),
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
      ),
    );
  }

  List<DropdownMenuItem<String>> _buildDropdownItems() {
    List<DropdownMenuItem<String>> items = [];
    for (int i = 0; i < photoTitlesWithFiles.length; i++) {
      items.add(
        DropdownMenuItem(
          value: photoTitlesWithFiles[i]['title'],
          child: Text(photoTitlesWithFiles[i]['title']),
        ),
      );
    }
    return items;
  }
}
