import 'package:flutter/material.dart';
import 'package:motoveys/Screens/surveyData.dart';
import 'package:motoveys/commonFunction.dart';

class SurveyorDataForm extends StatefulWidget {
  const SurveyorDataForm({super.key});

  @override
  State<SurveyorDataForm> createState() => _MyForm2State();
}

class _MyForm2State extends State<SurveyorDataForm> {
  List<Map<String, String>> listofMaps = [];

  void initState() {
    super.initState();

    SurveyData.fields.forEach((field) {
      Map<String, String> map = {'field': field};

      if (SurveyData.manualEntry.contains(field)) {
        map['value'] = 'manualEntry value';
      } else if (SurveyData.autoPopulateEditable.contains(field)) {
        map['value'] = 'autoPopulateEditable value';
      } else if (SurveyData.autoPopulateStatic.contains(field)) {
        map['value'] = 'autoPopulateStatic value';
      }

      listofMaps.add(map);
    });

    setState(() {});
    print(listofMaps);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text(
          'Surveyor Processing Details',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xFF610361),
        iconTheme: IconThemeData(color: Colors.white),
      ),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      buildList(listofMaps, context, true),
                      SizedBox(height: 300,),
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
        ),
      );
    
  }

  Widget buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Text(
        title,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget buildList(fields, BuildContext context, bool isManualEntry,
      {bool isStatic = false}) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: fields.length,
      itemBuilder: (context, index) {
        if (fields[index]['value'] == 'autoPopulateStatic value') {
          return CommonFunctions.buildViewOnly(context, fields[index]['field']);
        } else {
          return CommonFunctions.textField(context, fields[index]['field'], 1);
        }
      },
    );
  }
}
