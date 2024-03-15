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
        title: const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [Text('DL & RC Details'), Text('Claim Number')],
        ),
        backgroundColor: const Color(0xFF610361),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ListTile(
                  title: const Text('Reimbursement'),
                  leading: Radio(
                      value: 1,
                      groupValue: selectedValue,
                      onChanged: (value) {
                        setState(() {
                          selectedValue = value!;
                        });
                      }),
                ),
                ListTile(
                  title: const Text('Cashless'),
                  leading: Radio(
                      value: 2,
                      groupValue: selectedValue,
                      onChanged: (value) {
                        setState(() {
                          selectedValue = value!;
                        });
                      }),
                )
              ],
            ),
            Text();
          ]),
        ),
      ),
    );
  }
}
