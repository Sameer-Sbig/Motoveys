import 'package:flutter/material.dart';

class drivingLicense extends StatefulWidget {
  @override
  State<drivingLicense> createState() => _drivingLicense();
}

class _drivingLicense extends State<drivingLicense> {
  final TextEditingController driverController = TextEditingController();
  final TextEditingController vehicleOwnerController = TextEditingController();
  final TextEditingController vehicleRegistrationController =
      TextEditingController();
  final TextEditingController vehicleRegistrationDateController =
      TextEditingController();
  final TextEditingController transferDateController = TextEditingController();
  final TextEditingController vehicleMake = TextEditingController();
  final TextEditingController vehicleModel = TextEditingController();
  final TextEditingController engineeNumberController = TextEditingController();
  final TextEditingController chasisNumberController = TextEditingController();
  final TextEditingController rtoNameController = TextEditingController();
  final TextEditingController odometerReading = TextEditingController();
  // final TextEditingController vehicleColorPicker = TextEditingController();
  @override
  void dispose() {
    driverController.dispose();
  }

  String carColor = '';
  String colorType1 = '';
  @override
  Widget build(BuildContext context) {
    final widthAllowed = MediaQuery.of(context).size.width / 1.0;
    List<String> carColors = ['Red', 'Blue', 'Green', 'Yellow', 'Black'];
    List<String> colorType = ['Metallic', 'Matte'];

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
          padding: const EdgeInsets.all(8.0),
          child: Form(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 2, color: Color(0xFF610361)),
                  ),
                ),
                child: const Column(
                  children: [
                    Row(
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
              buildTextFormField('Driver Name', driverController),
              buildTextFormField('Vehicle Owner Name', vehicleOwnerController),
              buildTextFormField(
                  'Vehicle Registration Number', vehicleRegistrationController),
              buildTextFormField('Vehicle Registration Date',
                  vehicleRegistrationDateController),
              buildTextFormField('Transfer Date', transferDateController),
              buildTextFormField('Vehicle Make', vehicleMake),
              buildTextFormField('Vehicle Model', vehicleModel),
              buildTextFormField('Enginee Number', engineeNumberController),
              buildTextFormField('Chasis Number', chasisNumberController),
              buildTextFormField('RTO Name', rtoNameController),
              buildTextFormField('Odometer Reading', odometerReading),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 1, color: Colors.grey),
                  ),
                ),
                child: DropdownButtonFormField(
                  decoration: const InputDecoration(
                    labelText: 'Car Color',
                    border: InputBorder.none,
                  ),
                  value: carColor.isEmpty ? null : carColor,
                  items: carColors.map((String color) {
                    return DropdownMenuItem<String>(
                      value: color,
                      child: Text(color),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      carColor = newValue!;
                    });
                  },
                  isExpanded: true,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 1, color: Colors.grey),
                  ),
                ),
                child: DropdownButtonFormField(
                  decoration: const InputDecoration(
                    labelText: 'Color Type',
                    border: InputBorder.none,
                  ),
                  value: colorType1.isEmpty ? null : colorType1,
                  items: colorType.map((String color) {
                    return DropdownMenuItem<String>(
                      value: color,
                      child: Text(color),
                    );
                  }).toList(),
                  onChanged: (String? newValue1) {
                    setState(() {
                      colorType1 = newValue1!;
                    });
                  },
                  isExpanded: true,
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
                          padding: const EdgeInsets.fromLTRB(45, 0, 45, 0),
                          foregroundColor: Colors.white,
                          backgroundColor: Color(0xFF610361)),
                      onPressed: () {
                        print('Submit clicked!');
                        String driverName = driverController.text;
                        String vehicleOwner = vehicleOwnerController.text;
                        String registrationNo =
                            vehicleRegistrationController.text;
                        // Add remaining fields
                        print(driverName + vehicleOwner + registrationNo);
                      },
                      child: Text('Submit')),
                ],
              )
            ],
          )),
        ),
      ),
    );
  }
}

Widget buildTextFormField(String labelText, TextEditingController controller) {
  return TextFormField(
    controller: controller,
    decoration: InputDecoration(labelText: labelText),
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Please enter some text';
      }
      return null;
    },
  );
}
