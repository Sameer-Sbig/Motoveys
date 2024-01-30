// screens/login.dart

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
        titleTextStyle: TextStyle(color: Color.fromRGBO(245, 243, 242, 0.894)),
        backgroundColor: Color.fromARGB(255, 160, 13, 165),
        elevation: 9,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            SizedBox(height: 10),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(labelText: 'Password'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // // TODO: Add authentication logic here
                // // For simplicity, consider the login successful if email and password are not empty
                // if (emailController.text.isNotEmpty &&
                //     passwordController.text.isNotEmpty) {
                //   // Navigate to the home page upon successful login
                //   Navigator.pushReplacement(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => HomePage(),
                //     ),
                //   );
                // } else {
                //   // Show an error message if email or password is empty
                //   ScaffoldMessenger.of(context).showSnackBar(
                //     SnackBar(
                //       content: Text('Please enter valid email and password.'),
                //     ),r
                //   );
                // }
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
