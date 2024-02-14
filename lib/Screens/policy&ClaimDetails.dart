// import 'package:flutter/material.dart';
// import 'package:motoveys/models/dataItemModel.dart';

// class PolicyDetails extends StatefulWidget {
//   final ClaimsDashboardItems selectedItem;

//   const PolicyDetails({required this.selectedItem});
//   @override
//   State<PolicyDetails> createState() {
//     return _PolicyDetailsScreen();
//   }
// }

// class _PolicyDetailsScreen extends State<PolicyDetails> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             const Text('Policy & Claims Details'),
//             const SizedBox(height: 5),
//             Text(widget.selectedItem.requestNumber)
//           ],
//         ),
//         backgroundColor: const Color(0xFF610361),
//       ),
//       body: SafeArea(
//           child: SizedBox(
//         height: MediaQuery.of(context).size.height,
//         child: Column(
//           children: [
//             Padding(
//               padding: EdgeInsets.all(10),
//               child: Column(
//                 children: [
//                   Text("Hello"),
//                 ],
//               ),
//             )
//           ],
//         ),
//       )),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:motoveys/Screens/claimInformation.dart';
import 'package:motoveys/Screens/policyInformation.dart';
import 'package:motoveys/models/dataItemModel.dart';

class PolicyDetails extends StatefulWidget {
  final ClaimsDashboardItems selectedItem;

  const PolicyDetails({required this.selectedItem});

  @override
  State<PolicyDetails> createState() {
    return _PolicyDetailsScreen();
  }
}

class _PolicyDetailsScreen extends State<PolicyDetails> {
  int _currentIndex = 0;
  var widgetArray = [];

  @override
  void initState() {
    super.initState();
    setState(() {
      widgetArray = [
        // Text('Policy Information'),
        PolicyInformation(selectedItems: widget.selectedItem),
        // Text('Claim Information')
        ClaimInformationScreen(selectedItems: widget.selectedItem)
      ];
    });
  } // Current index for bottom navigation bar

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Policy & Claims Details'),
            const SizedBox(height: 5),
            Text(widget.selectedItem.requestNumber)
          ],
        ),
        backgroundColor: const Color(0xFF610361),
      ),
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [widgetArray[_currentIndex]],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white70,
        selectedItemColor: const Color(0xFF610361),
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.portrait_outlined),
            label: 'Policy Info',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.car_crash_outlined),
            label: 'Claim Info',
          ),
        ],
      ),
    );
  }
}
