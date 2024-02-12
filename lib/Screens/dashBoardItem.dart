import 'package:flutter/material.dart';
import 'package:motoveys/Screens/claimProcessing.dart';
import 'package:motoveys/models/dataItemModel.dart';
import 'package:url_launcher/url_launcher.dart';

class DashboardItemWidget extends StatefulWidget {
  final ClaimsDashboardItems item;
  var searchIsOn;

  DashboardItemWidget({required this.item, required this.searchIsOn});

  @override
  State<DashboardItemWidget> createState() => _DashboardItemWidgetState();
}

class _DashboardItemWidgetState extends State<DashboardItemWidget> {
  _handlePhoneButton() async {
    print("phoneButton clicked");
    var url = Uri.parse("tel:+919769253131");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url ';
    }
  }

  _handleMailButton() async {
    print("mailButton clicked");
    var mail = 'example@example.com';
    var url = Uri.parse("mailto:$mail");

    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url ';
    }
    // final Uri params = Uri(
    //   scheme: 'mailto',
    //   path: 'email@example.com',
    //   query:
    //       'subject=App Feedback&body=App Version 3.23', //add subject and body here
    // );

    // if (await canLaunchUrl(params)) {
    //   await launchUrl(params);
    // } else {
    //   throw 'Could not launch';
    // }
  }

  _handleTextMessage() async {
    print("text button clicked");
    var url = Uri.parse("sms:+919769253131");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url ';
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          // Navigate to Sameer.dart page
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ClaimProcessing(selectedItem: widget.item),
            ), // Replace SameerPage() with your actual Sameer.dart page class
          );
        },
        child: Container(
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: const BorderSide(
                    width: 2, color: Color.fromARGB(255, 165, 11, 152))),
            elevation: 10,
            color: Colors.blueGrey.shade50,
            margin: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // const SizedBox(
                //   height: 20,
                // ),
                // SizedBox(
                //     height: 150,
                //     width: 100,
                //     child: Image.asset(
                //       'lib/assests/civic.jpg',
                //       // fit: BoxFit.fitHeight,
                //     )),
                // SizedBox(
                //   width: 10,
                // ),
                Image.asset(
                  ('lib/assests/civic.jpg'),
                  // scale: Checkbox.width,
                  width: 150,
                  // height: 190,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    Text(
                      "${widget.item.requestNumber}",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('${widget.item.customerName}'),
                    Text('${widget.item.carNumber}'),
                    Text('${widget.item.carName}'),
                    const Text(
                      'Maruti Suzuki Authorised Service Center',
                      style: TextStyle(fontSize: 10),
                      // softWrap: false,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    // const Expanded(
                    //   child: Row(
                    //     children: [
                    //       Flexible(
                    //         child: Text(
                    //           'Maruti Suzuki Authorised Service Center',
                    //           softWrap: false,
                    //           maxLines: 4,
                    //           overflow: TextOverflow.ellipsis,
                    //           style: TextStyle(
                    //               fontSize: 14,
                    //               letterSpacing: 2,
                    //               fontWeight: FontWeight.bold,
                    //               color: Color.fromRGBO(0, 0, 0, 1)),
                    //         ),
                    //       )
                    //     ],
                    //   ),
                    // ),
                    Text(
                      '${widget.item.status}',
                      style: TextStyle(color: Colors.red.shade300),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Icon(Icons.phone),
                        // IconButton(
                        //     onPressed: _handlePhoneButton,
                        //     icon: Icon(
                        //       Icons.phone,
                        //       color: Colors.blue.shade300,
                        //     )
                        //     // icon: SvgPicture.asset(
                        //     //   'lib/assests/phone.svg',
                        //     //   width: 20,
                        //     //   height: 10,
                        //     // )
                        //     ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              padding: const EdgeInsets.all(6),
                              backgroundColor: Colors.white,
                              elevation: 7,
                              // elevation is 10 by default
                              shadowColor: Color.fromARGB(255, 107, 9, 116),
                            ),
                            onPressed: _handlePhoneButton,
                            child: ShaderMask(
                              shaderCallback: (Rect bounds) {
                                return const LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color.fromRGBO(112, 12, 121, 1),
                                    Color.fromARGB(255, 32, 35, 202)
                                  ],
                                ).createShader(bounds);
                              },
                              child: const Icon(
                                Icons.phone,
                                size: 20,
                              ),
                            )),
                        SizedBox(width: 6),
                        // width is 10 if we use iconbutton
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              padding: const EdgeInsets.all(6),
                              backgroundColor: Colors.white,
                              elevation: 7,
                              shadowColor: Color.fromARGB(255, 107, 9, 116),
                            ),
                            onPressed: _handleMailButton,
                            child: ShaderMask(
                              shaderCallback: (Rect bounds) {
                                return const LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color.fromRGBO(112, 12, 121, 1),
                                    Color.fromARGB(255, 32, 35, 202)
                                  ],
                                ).createShader(bounds);
                              },
                              child: const Icon(
                                Icons.mail_lock_outlined,
                                size: 20,
                              ),
                            )),

                        // IconButton(
                        //     onPressed: _handleMailButton,
                        //     icon: Icon(
                        //       Icons.mail_outline,
                        //       color: Colors.indigo.shade900,
                        //     )),
                        // Icon(Icons.mail_outline),
                        SizedBox(width: 6),
                        //width is 10 by defaul
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              padding: const EdgeInsets.all(6),
                              backgroundColor: Colors.white,
                              elevation: 7,
                              shadowColor: Color.fromARGB(255, 107, 9, 116),
                            ),
                            onPressed: _handleTextMessage,
                            child: ShaderMask(
                              shaderCallback: (Rect bounds) {
                                return const LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color.fromRGBO(112, 12, 121, 1),
                                    Color.fromARGB(255, 32, 35, 202)
                                  ],
                                ).createShader(bounds);
                              },
                              child: const Icon(
                                Icons.message_outlined,
                                size: 20,
                              ),
                            )),
                        // IconButton(
                        //     onPressed: _handleTextMessage,
                        //     icon: Icon(Icons.message_outlined)),
                        // Icon(Icons.message_outlined),
                      ],
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}

  








// class DashboardItemWidget extends StatelessWidget {
//   final String requestNumber;
//   final String customerName;
//   final String carNumber;
//   final String carName;
//   final String status;
//   final int phoneNumber;
//   final String emailId;
//   // final Image imageOfCar;

//   DashboardItem(
//       {required this.requestNumber,
//       required this.customerName,
//       required this.carNumber,
//       required this.carName,
//       required this.status,
//       required this.phoneNumber,
//       required this.emailId});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 4,
//       margin: EdgeInsets.symmetric(vertical: 8),
//       child: Row(
//         // title: Text(requestNumber, style: TextStyle(fontSize: 18)),
//         // subtitle: Text(customerName,
//         //     style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           const Column(
//             children: [
//               Icon(Icons.ac_unit_sharp),
//               // Image.asset(name),
//               Text("Inside Column 1"),
//             ],
//           ),
//           Column(
//             children: [
//               Text(requestNumber),
//               Text(customerName),
//               Text(carNumber),
//               Text(carName),
//               Text(status),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
