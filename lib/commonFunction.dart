import 'package:flutter/material.dart';

 

class CommonFunctions {

 

  static Widget buildViewOnly(BuildContext context, String name) {

    return LayoutBuilder(builder: (context, constraints) {

      double buttonWidth = constraints.maxWidth;

      if (MediaQuery.of(context).size.width >= 600) {

        buttonWidth = constraints.maxWidth;

      }

 

      return Container(

        decoration: BoxDecoration(

            border: Border.all(width: 1.5, color: Colors.grey.shade400)),

        child: TextFormField(

          readOnly: true,

          decoration: InputDecoration(

            // icon: Icon(Icons.person),

            contentPadding: EdgeInsets.all(10),

            hintText: name,

            // labelText: 'Surveyor Name: Ram Sharma',

          ),

        ),

      );

    });

  }

 

  static Widget textField(BuildContext context, String label, int maxlines) {

    return Container(

      decoration: BoxDecoration(

          border: Border.all(width: 1.5, color: Colors.grey.shade400)),

      child: Padding(

        padding: const EdgeInsets.all(10.0),

        child: Column(

          // mainAxisAlignment: MainAxisAlignment.start,

          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            Text('${label}'),

            TextFormField(

              maxLines: maxlines,

              cursorColor: Color(0xFF610361),

              decoration: const InputDecoration(

                // icon: Icon(Icons.person),

                // hintText: 'Enter your observation',

                // labelText: 'Surveyor Observation*',

                contentPadding: EdgeInsets.all(10),

                border: InputBorder.none,

              ),

              onSaved: (String? value) {

                // This optional block of code can be used to run

                // code when the user saves the form.

              },

              validator: (String? value) {

                return (value != null && value.contains('@'))

                    ? 'Do not use the @ char.'

                    : null;

              },

            ),

          ],

        ),

      ),

    );

  }

 

  static Widget field(BuildContext context, String label, int maxlines) {

    FocusNode myFocusNode = new FocusNode();

    // using focus node to change color based on focus

    return Padding(

      padding: const EdgeInsets.all(8.0),

      child: Column(

        // mainAxisAlignment: MainAxisAlignment.start,

        crossAxisAlignment: CrossAxisAlignment.start,

        children: [

          // Text('${label}'),

          TextFormField(

            maxLines: maxlines,

            cursorColor: Color(0xFF610361),

            decoration: InputDecoration(

                // icon: Icon(Icons.person),

                // hintText: 'Enter your observation',

                border: InputBorder.none,

                labelText: label,

                contentPadding: EdgeInsets.all(10),

                labelStyle: TextStyle(

                    color: myFocusNode.hasFocus

                        ? Color(0xFF610361)

                        : Colors.black)),

            onSaved: (String? value) {

              // This optional block of code can be used to run

              // code when the user saves the form.

            },

            validator: (String? value) {

              return (value != null && value.contains('@'))

                  ? 'Do not use the @ char.'

                  : null;

            },

          ),

        ],

      ),

    );

  }

}
