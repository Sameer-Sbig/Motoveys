import 'package:flutter/material.dart';
import 'package:motoveys/models/dataItemModel.dart';
import 'package:intl/intl.dart';

class SurveyorDetailsMain extends StatefulWidget {
  final ClaimsDashboardItems selectedItem;
  const SurveyorDetailsMain({required this.selectedItem});
  @override
  State<SurveyorDetailsMain> createState() {
    return _SurveyorDetailsMain();
  }
}

class _SurveyorDetailsMain extends State<SurveyorDetailsMain> {
  DateTime? _datePicked;
  final DateFormat formatter = DateFormat('yyyy-MM-dd');
  final DateFormat formatter1 = DateFormat('yyyy-MM-dd HH:mm');

  void _presentDatePicker() async {
    final now = DateTime.now();
    final firstDate = DateTime(now.year - 1, now.month, now.day);
    final lastDate = now;

    final pickedDate = await showDatePicker(
      context: context,
      initialDate: now,
      firstDate: firstDate,
      lastDate: lastDate,
    );
    setState(() {
      _datePicked = pickedDate;
      print(_datePicked);
    });
  }

  TimeOfDay? _SurveyTime;

  void _SurveyTimePicker() async {
    final now = TimeOfDay.now();

    final pickedTime = await showTimePicker(
      context: context,
      initialTime: now,
    );

    if (pickedTime != null) {
      setState(() {
        _SurveyTime = pickedTime;
        print(_SurveyTime);
      });
    }
  }

  DateTime? _datePicked2;
  // final DateFormat formatter = DateFormat('yyyy-MM-dd');
  void _presentDatePicker2() async {
    final DateTime now = DateTime.now();
    final DateTime firstDate = DateTime(now.year - 1, now.month, now.day);
    final DateTime lastDate = now;

    // Show date picker
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: now,
      firstDate: firstDate,
      lastDate: lastDate,
    );

    if (pickedDate != null) {
      // Show time picker if date is selected
      final TimeOfDay? pickedTime = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
      );

      if (pickedTime != null) {
        // Combine date and time
        final DateTime combinedDateTime = DateTime(
          pickedDate.year,
          pickedDate.month,
          pickedDate.day,
          pickedTime.hour,
          pickedTime.minute,
        );

        setState(() {
          _datePicked2 = combinedDateTime;
          print(_datePicked2);
        });
      }
    }
  }

  DateTime? _datePicked3;
  // final DateFormat formatter = DateFormat('yyyy-MM-dd');
  void _presentDatePicker3() async {
    final DateTime now = DateTime.now();
    final DateTime firstDate = DateTime(now.year - 1, now.month, now.day);
    final DateTime lastDate = now;

    // Show date picker
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: now,
      firstDate: firstDate,
      lastDate: lastDate,
    );

    if (pickedDate != null) {
      // Show time picker if date is selected
      final TimeOfDay? pickedTime = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
      );

      if (pickedTime != null) {
        // Combine date and time
        final DateTime combinedDateTime = DateTime(
          pickedDate.year,
          pickedDate.month,
          pickedDate.day,
          pickedTime.hour,
          pickedTime.minute,
        );

        setState(() {
          _datePicked3 = combinedDateTime;
          print(_datePicked3);
        });
      }
    }
  }

  DateTime? _datePicked4;
  // final DateFormat formatter = DateFormat('yyyy-MM-dd');
  void _presentDatePicker4() async {
    final now = DateTime.now();
    final firstDate = DateTime(now.year - 1, now.month, now.day);
    final lastDate = now;

    final pickedDate = await showDatePicker(
      context: context,
      initialDate: now,
      firstDate: firstDate,
      lastDate: lastDate,
    );
    setState(() {
      _datePicked4 = pickedDate;
      print(_datePicked4);
    });
  }

  DateTime? _datePicked5;
  // final DateFormat formatter = DateFormat('yyyy-MM-dd');
  void _presentDatePicker5() async {
    final now = DateTime.now();
    final firstDate = DateTime(now.year - 1, now.month, now.day);
    final lastDate = now;

    final pickedDate = await showDatePicker(
      context: context,
      initialDate: now,
      firstDate: firstDate,
      lastDate: lastDate,
    );
    setState(() {
      _datePicked5 = pickedDate;
      print(_datePicked5);
    });
  }

  DateTime? _datePicked6;
  // final DateFormat formatter = DateFormat('yyyy-MM-dd');
  void _presentDatePicker6() async {
    final now = DateTime.now();
    final firstDate = DateTime(now.year - 1, now.month, now.day);
    final lastDate = now;

    final pickedDate = await showDatePicker(
      context: context,
      initialDate: now,
      firstDate: firstDate,
      lastDate: lastDate,
    );
    setState(() {
      _datePicked6 = pickedDate;
      print(_datePicked6);
    });
  }

  DateTime? _VehicleReportDate;
  void _VehicleReportDatePicker() async {
    final now = DateTime.now();
    final firstDate = DateTime(now.year - 1, now.month, now.day);
    final lastDate = now;

    final pickedDate = await showDatePicker(
      context: context,
      initialDate: now,
      firstDate: firstDate,
      lastDate: lastDate,
    );
    setState(() {
      _VehicleReportDate = pickedDate;
      print(_VehicleReportDate);
    });
  }

  // DateTime? _VehicleReportTime;
  TimeOfDay? _VehicleReportTime;

  void _VehicleReportTimePicker() async {
    final now = TimeOfDay.now();

    final pickedTime = await showTimePicker(
      context: context,
      initialTime: now,
    );

    if (pickedTime != null) {
      setState(() {
        _VehicleReportTime = pickedTime;
        print(_VehicleReportTime);
      });
    }
  }

  // ***** now starting with amount controllers ******
  final _computedAmountController = TextEditingController();
  final _estimatedAmountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
        backgroundColor: const Color(0xFF610361),
      ),
      body: SafeArea(
        child: SizedBox(
          height:
              MediaQuery.of(context).size.height, // or any other fixed height
          child: Column(
            children: [
              // Container(
              //   height: 50,
              //   child: Card(
              //     elevation: 0,
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(0),
              //       side: BorderSide(color: Colors.grey, width: 1.0),
              //     ),
              //     child: Padding(
              //       padding: const EdgeInsets.all(20),
              //       child: Text("Dates"),
              //     ),
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                          width: 2,
                          color: Color(
                              0xFF610361)), // Add border to the bottom side
                    ),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Dates',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      // SizedBox(width: 10), // Add spacing between Text and Border
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: Color.fromARGB(54, 0, 0, 0),
                                  width: 1.5))),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              child: Text(_datePicked == null
                                  ? 'Survey Date'
                                  : formatter.format(_datePicked!)),
                            ),
                          ),
                          IconButton(
                              onPressed: _presentDatePicker,
                              icon: const Icon(Icons.calendar_month_outlined)),
                          // Expanded(
                          //   child: Container(
                          //     padding: const EdgeInsets.all(10),
                          //     child: Text(_datePicked1 == null
                          //         ? 'Survey Time'
                          //         : formatter.format(_datePicked1!)),
                          //   ),
                          // ),
                          // IconButton(
                          //     onPressed: _presentDatePicker1,
                          //     icon: const Icon(Icons.calendar_month_outlined)),
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              // child: Text(_VehicleReportTime == null
                              //     ? 'Vehical Report Time'
                              //     : formatter.format(_VehicleReportTime!)),
                              child: Text(_SurveyTime == null
                                  ? 'Survey Time'
                                  : '${_SurveyTime!.hour}:${_SurveyTime!.minute}'),
                            ),
                          ),
                          IconButton(
                              onPressed: _SurveyTimePicker,
                              icon: const Icon(Icons.calendar_month_outlined)),
                        ],
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: Color.fromARGB(54, 0, 0, 0),
                                  width: 1.5))),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              child: Text(_datePicked2 == null
                                  ? 'Work Approval Date and Time'
                                  : formatter1.format(_datePicked2!)),
                            ),
                          ),
                          IconButton(
                              onPressed: _presentDatePicker2,
                              icon: const Icon(Icons.calendar_month_outlined)),
                        ],
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: Color.fromARGB(54, 0, 0, 0),
                                  width: 1.5))),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              child: Text(_datePicked3 == null
                                  ? 'Spot Survey Date & Time'
                                  : 'Spot Survey Date & Time : ${formatter1.format(_datePicked3!)}'),
                            ),
                          ),
                          IconButton(
                              onPressed: _presentDatePicker3,
                              icon: const Icon(Icons.calendar_month_outlined)),
                        ],
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: Color.fromARGB(54, 0, 0, 0),
                                  width: 1.5))),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              child: Text(_datePicked4 == null
                                  ? 'Estimate Date *'
                                  : formatter.format(_datePicked4!)),
                            ),
                          ),
                          IconButton(
                              onPressed: _presentDatePicker4,
                              icon: const Icon(Icons.calendar_month_outlined)),
                        ],
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: Color.fromARGB(54, 0, 0, 0),
                                  width: 1.5))),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              child: Text(_datePicked5 == null
                                  ? 'Reinspection Date *'
                                  : formatter.format(_datePicked5!)),
                            ),
                          ),
                          IconButton(
                              onPressed: _presentDatePicker5,
                              icon: const Icon(Icons.calendar_month_outlined)),
                        ],
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: Color.fromARGB(54, 0, 0, 0),
                                  width: 1.5))),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              child: Text(_datePicked6 == null
                                  ? 'Last Document Read Date *'
                                  : formatter.format(_datePicked6!)),
                            ),
                          ),
                          IconButton(
                              onPressed: _presentDatePicker6,
                              icon: const Icon(Icons.calendar_month_outlined)),
                        ],
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: Color.fromARGB(54, 0, 0, 0),
                                  width: 1.5))),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              child: Text(_VehicleReportDate == null
                                  ? 'Vehical Report Date'
                                  : formatter.format(_VehicleReportDate!)),
                            ),
                          ),
                          IconButton(
                              onPressed: _VehicleReportDatePicker,
                              icon: const Icon(Icons.calendar_month_outlined)),
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              // child: Text(_VehicleReportTime == null
                              //     ? 'Vehical Report Time'
                              //     : formatter.format(_VehicleReportTime!)),
                              child: Text(_VehicleReportTime == null
                                  ? 'Vehicle Report Time'
                                  : '${_VehicleReportTime!.hour}:${_VehicleReportTime!.minute}'),
                            ),
                          ),
                          IconButton(
                              onPressed: _VehicleReportTimePicker,
                              icon: const Icon(Icons.calendar_month_outlined)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                                width: 2,
                                color: Color(
                                    0xFF610361)), // Add border to the bottom side
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Amount',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.all(5),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 55,
                              child: TextFormField(
                                controller: _computedAmountController,
                                maxLength: 6,
                                keyboardType: TextInputType.number,
                                decoration: const InputDecoration(
                                  prefixText: '\$ ',
                                  label: Text('Computed Amount'),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 55,
                              child: TextFormField(
                                controller: _estimatedAmountController,
                                maxLength: 6,
                                keyboardType: TextInputType.number,
                                decoration: const InputDecoration(
                                  prefixText: '\$ ',
                                  label: Text('Estimated Amount'),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        padding: const EdgeInsets.fromLTRB(
                                            45, 0, 45, 0),
                                        foregroundColor: Colors.white,
                                        backgroundColor: Color(0xFF610361)),
                                    onPressed: () =>
                                        {print('Submit button clicked')},
                                    child: Text('Submit')),
                              ],
                            )
                          ],
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
