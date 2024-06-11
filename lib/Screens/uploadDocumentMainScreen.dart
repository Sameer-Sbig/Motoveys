import 'package:flutter/material.dart';

import 'package:file_picker/file_picker.dart';

import 'package:image_picker/image_picker.dart';

import 'dart:io';

class UploadDocuments1 extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<UploadDocuments1> {
  final ImagePicker _picker = ImagePicker();

  Map<String, Map<String, List<String>>> dataMap = {
    "Accident Photos": {
      "Crash": [],
      "Kept Open": [],
      "Other": [],
      "Reinspection": [],
      "Salvage": [],
      "Spot_Photo": []
    },
    "Document Photos": {
      "Bank Mandate_NEFT details": [],
      "Chasis/Enginee Print": [],
      "Claim Form": [],
      "Closure Non Submission": [],
      "Consent Letter": [],
      "Consent Letter-NOS": [],
      "Consent Non Settlement": [],
      "Death Certificate": [],
      "Deed of Subrogation": [],
      "Discharge Voucher": [],
      "Doc. Request Letter": [],
      "Driving License": [],
      "Estimate": [],
      "Final Reminder": [],
      "Final Report-Khatma": [],
      "FIR": [],
      "Fitness Certificate": [],
      "Flash Report": [],
      "Indemnity Bond": [],
      "Insured KYC_AML documents": []
    },
    "Other Files": {
      "Postmortem Report": [],
      "Supplementary_Survey_Report": [],
      "Survey Report": [],
      "Untrace Report": []
    }
  };

  String? selectedCategory;

  String? selectedOption;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Upload Documents',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xFF610361),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildCategorySection(
                'Accident Photos', dataMap['Accident Photos']!),
            _buildCategorySection(
                'Document Photos', dataMap['Document Photos']!),
            _buildCategorySection('Other Files', dataMap['Other Files']!),
          ],
        ),
      ),
    );
  }

  Widget _buildCategorySection(
      String title, Map<String, List<String>> options) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        _buildDropdownWithButton(title, options.keys.toList()),
        if (selectedCategory == title && selectedOption != null)
          _buildFileList(selectedCategory!, selectedOption!),
      ],
    );
  }

  Widget _buildDropdownWithButton(String category, List<String> options) {
    return Row(
      children: [
        Expanded(
          child: DropdownButton<String>(
            hint: Text('Select Option'),
            isExpanded: true,
            value: selectedCategory == category ? selectedOption : null,
            items: options.map((String key) {
              return DropdownMenuItem<String>(
                value: key,
                child: Text(key),
              );
            }).toList(),
            onChanged: (value) {
              setState(() {
                selectedCategory = category;

                selectedOption = value;
              });
            },
          ),
        ),
        ElevatedButton(
          onPressed: () {
            if (selectedCategory != null && selectedOption != null) {
              _showImageSourceActionSheet(
                  context, selectedCategory!, selectedOption!);
            }
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFF610361),
            foregroundColor: Colors.white,
          ),
          child: Text('Add Image'),
        ),
      ],
    );
  }

  Widget _buildFileList(String category, String option) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: dataMap[category]![option]!.length,
      itemBuilder: (context, index) {
        return Container(
            height: 120,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blue)
            ),
            width: MediaQuery.of(context).size.width /3,
            child: Stack(children: [
              Image.file(File(dataMap[category]![option]![index])),
              Positioned(
                top: 0,
                // right: 20,
                left:60,
                child: GestureDetector(
                  onTap: () => _deleteImage(category, option, index),
                  child: Icon(
                    Icons.delete,
                    color: Colors.red,
                  ),
                ),
              ),
            ]));

        // return ListTile(

        //   leading: Image.file(

        //     File(dataMap[category]![option]![index]),

        //     width: 50,

        //     height: 50,

        //     fit: BoxFit.cover,

        //   ),

        //   title: Text(dataMap[category]![option]![index].split('/').last),

        // );
      },
    );
  }

  void _deleteImage(category, option, index) {
    setState(() {
      
      
    });
    
  }

  void _showImageSourceActionSheet(
      BuildContext context, String category, String option) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: Icon(Icons.camera_alt),
                title: Text('Camera'),
                onTap: () {
                  Navigator.of(context).pop();

                  _pickImage(ImageSource.camera, category, option);
                },
              ),
              ListTile(
                leading: Icon(Icons.photo_album),
                title: Text('Gallery'),
                onTap: () {
                  Navigator.of(context).pop();

                  _pickImage(ImageSource.gallery, category, option);
                },
              ),
              ListTile(
                leading: Icon(Icons.folder),
                title: Text('File Manager'),
                onTap: () {
                  Navigator.of(context).pop();

                  _pickImageFromFileManager(category, option);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> _pickImage(
      ImageSource source, String category, String option) async {
    final pickedFile = await _picker.pickImage(source: source);

    if (pickedFile != null) {
      setState(() {
        dataMap[category]![option]!.add(pickedFile.path);
      });
    }
  }

  Future<void> _pickImageFromFileManager(String category, String option) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.image,
    );

    if (result != null) {
      String filePath = result.files.single.path!;

      setState(() {
        dataMap[category]![option]!.add(filePath);
      });
    }
  }
}
