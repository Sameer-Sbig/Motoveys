// import 'package:flutter/material.dart';

// class InvoiceDetails extends StatefulWidget {
//   @override
//   State<InvoiceDetails> createState() => _invoiceDetails();
// }

// class _invoiceDetails extends State<InvoiceDetails> {
//   int selectedValue = 1;
//   List<String> reimbursement = [];
//   List<String> cashless = [];

//   @override
//   Widget build(BuildContext context) {
//     List<String> selectedArr = selectedValue == 1 ? reimbursement : cashless;
//     return Scaffold(
//       appBar: AppBar(
//         title: const Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [Text('DL & RC Details'), Text('Claim Number')],
//         ),
//         backgroundColor: const Color(0xFF610361),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: EdgeInsets.all(8),
//           child: Column(children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,

//               children: [
//                 Flexible(
//                   child: ListTile(
//                     title: const Text('Reimbursement' , style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),),
//                     leading: Radio(
//                         value: 1,
//                         groupValue: selectedValue,
//                         onChanged: (value) {
//                           setState(() {
//                             selectedValue = value!;
//                           });
//                         }),
//                   ),
//                 ),
//                 Flexible(
//                   child: ListTile(
//                     title: const Text('Cashless' , style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),),
//                     leading: Radio(
//                         value: 2,
//                         groupValue: selectedValue,
//                         onChanged: (value) {
//                           setState(() {
//                             selectedValue = value!;
//                           });
//                         }),
//                   ),
//                 )
//               ],
//             ),
//             Text('Add '),
//           ]),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class InvoiceDetails extends StatefulWidget {
  @override
  State<InvoiceDetails> createState() => _invoiceDetails();
}

class _invoiceDetails extends State<InvoiceDetails> {
  int selectedValue = 1;
  List<String> reimbursement = [];
  List<String> cashless = [];

  @override
  Widget build(BuildContext context) {
    List<String> selectedArr = selectedValue == 1 ? reimbursement : cashless;
    return Scaffold(
      appBar: AppBar(
        title: Text('Invoice Details' , style: TextStyle(color: Colors.white),),
        
       
        backgroundColor: const Color(0xFF610361),
        
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Radio(
                            value: 1,
                            groupValue: selectedValue,
                            onChanged: (value) {
                              setState(() {
                                selectedValue = value!;
                              });
                            },
                          ),
                          const Text(
                            'Reimbursement',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: 2,
                            groupValue: selectedValue,
                            onChanged: (value) {
                              setState(() {
                                selectedValue = value!;
                              });
                            },
                          ),
                          const Text(
                            'Cashless',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF610361),
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    print('Submit Clicked');
                  },
                  child: Text('New Invoice'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

