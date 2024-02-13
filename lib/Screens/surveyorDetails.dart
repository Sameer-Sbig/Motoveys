// import 'package:flutter/material.dart';
// import 'package:motoveys/models/dataItemModel.dart';

// class SurveyorDetails extends StatefulWidget {
//   final ClaimsDashboardItems selectedItem;
//   const SurveyorDetails({required this.selectedItem});
//   @override
//   State<SurveyorDetails> createState() {
//     return _SurveyorDetails();
//   }
// }

// class _SurveyorDetails extends State<SurveyorDetails> {
//   DateTime? _datePicked;

//   void _presentDatePicker(BuildContext context) async {
//     final now = DateTime.now();
//     final firstDate = DateTime(now.year - 1, now.month, now.day);
//     final lastDate = now;

//     final pickedDate = await showDatePicker(
//       context: context,
//       initialDate: now,
//       firstDate: firstDate,
//       lastDate: lastDate,
//     );
//     setState(() {
//       _datePicked = pickedDate;
//     });
//   }

//   void _onDatePickerPressed(BuildContext context) {
//     _presentDatePicker(context);
//   }

//   @override
//   Widget build(BuildContext context) {
//     double widthAllowed = MediaQuery.of(context).size.width;
//     return Scaffold(
//       appBar: AppBar(
//         title: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             const Text('Surveyor Details'),
//             const SizedBox(height: 5),
//             Text(widget.selectedItem.requestNumber)
//           ],
//         ),
//         backgroundColor: Color(0xFF610361),
//       ),
//       body: SingleChildScrollView(
//         child: Container(
//           // height: 600,
//           child: Card(
//             color: Color.fromARGB(255, 196, 102, 196),
//             child: ExpansionTile(
//               title: Text(

//                 "Claim updation and query",
//                 style: TextStyle(color: Colors.white),
//               ),
//               children: [

//                 Container(
//                   // color: Color.fromARGB(255, 219, 197, 219),
//                   padding: EdgeInsets.all(20),
//                   width: double.infinity,
//                   decoration: const BoxDecoration(
//                       border: Border(
//                           bottom: BorderSide(color: Colors.grey, width: 1.0))),
//                   child: Text("Dates"),
//                 ),
//                 Expanded(
//                   child: Row(children: [
//                     Text('Hard Coded Date'),
//                     IconButton(
//                         onPressed: () => _presentDatePicker(context),
//                         icon: Icon(Icons.calendar_month))
//                   ]),
//                 ),

//                 // Expanded(
//                 //   child: TextField(

//                 //   ),
//                 // ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:motoveys/models/dataItemModel.dart';

class SurveyorDetails extends StatefulWidget {
  final ClaimsDashboardItems selectedItem;
  const SurveyorDetails({required this.selectedItem});
  @override
  State<SurveyorDetails> createState() {
    return _SurveyorDetails();
  }
}

class _SurveyorDetails extends State<SurveyorDetails> {
  List<DateTime?> _datesPicked = [];

  void _presentDatePicker() async {
    final now = DateTime.now();
    final firstDate = DateTime(now.year - 1, now.month, now.day);
    final lastDate = now;

    List<DateTime?> pickedDates = [];

    // Loop through the dates
    for (int i = 0; i < 7; i++) {
      final pickedDate = await showDatePicker(
        context: context,
        initialDate: now,
        firstDate: firstDate,
        lastDate: lastDate,
      );

      if (pickedDate != null) {
        pickedDates.add(pickedDate);
      }
    }

    setState(() {
      _datesPicked = pickedDates;
    });
  }

  // void _onDatePickerPressed(BuildContext context) {
  //   _presentDatePicker(context);
  // }

  @override
  Widget build(BuildContext context) {
    double widthAllowed = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Surveyor Details'),
            const SizedBox(height: 5),
            Text(widget.selectedItem.requestNumber)
          ],
        ),
        backgroundColor: Color(0xFF610361),
      ),
      body: SingleChildScrollView(
        child: Container(
          // height: 600,
          child: Card(
            color: Color.fromARGB(255, 196, 102, 196),
            child: ExpansionTile(
              title: Text(
                "Claim updation and query",
                style: TextStyle(color: Colors.white),
              ),
              children: [
                // ListTile(
                //   title: Text("First List Tile"),
                //   onTap: () {
                //     // Handle onTap for the first list tile
                //   },
                // ),
                // ListTile(
                //   title: Text("Second List Tile"),
                //   onTap: () {
                //     // Handle onTap for the second list tile
                //   },
                // ),
                Container(
                  // color: Color.fromARGB(255, 219, 197, 219),
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: Colors.grey, width: 1.0))),
                  child: Text("Dates"),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Hard Coded Date',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    IconButton(
                      onPressed: () => _presentDatePicker(),
                      icon: Icon(Icons.calendar_month),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
