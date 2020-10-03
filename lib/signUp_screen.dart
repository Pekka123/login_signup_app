import 'package:flutter/material.dart';
import 'package:signup_app/userList.dart';

class SignUpScreen extends StatelessWidget {
  final inputUserNameController = new TextEditingController();
  final inputPasswordController = new TextEditingController();
  final inputRePasswordController = new TextEditingController();

  void submitted(ctx) {
    final userNameData = inputUserNameController.text.trim();
    final userPasswordData = inputPasswordController.text.trim();
    final userRePasswordData = inputRePasswordController.text.trim();

    if (userNameData.isEmpty ||
        userPasswordData.isEmpty ||
        userRePasswordData.isEmpty ||
        userPasswordData != userRePasswordData) {
      return;
    } else {
      Navigator.push(ctx, MaterialPageRoute(builder: (context) => UserList()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: "Username"),
              controller: inputUserNameController,
              onSubmitted: (_) {
                submitted(context);
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: "Password"),
              controller: inputPasswordController,
              onSubmitted: (_) {
                submitted(context);
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: "RE-password"),
              controller: inputRePasswordController,
              onSubmitted: (_) {
                submitted(context);
              },
            ),
            RaisedButton(
              onPressed: () {
                submitted(context);
              },
              child: Text("SignUp"),
            ),
          ],
        ),
      ),
    );
  }
}
