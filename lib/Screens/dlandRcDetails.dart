import 'package:flutter/material.dart';

class DlRCDetails extends StatefulWidget {
  @override
  State<DlRCDetails> createState() => _DlRcDetails();
}

class _DlRcDetails extends State<DlRCDetails> {
  final myController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final widthAllowed = MediaQuery.of(context).size.width / 1.0;
    return Scaffold(
      appBar: AppBar(
        title: const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [Text('DL & RC Details'), Text('Claim Number')],
        ),
        backgroundColor: const Color(0xFF610361),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 2, color: Color(0xFF610361)),
                ),
              ),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Driver's Name",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  //       height: MediaQuery.of(context).size.height /
                  // 5
                  width: widthAllowed,
                  // width: 200,
                  child: TextFormField(
                    controller: myController,
                    onChanged: (valuer) {},
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
