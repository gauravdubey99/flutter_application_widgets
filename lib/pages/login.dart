import 'package:flutter/material.dart';
import 'package:flutter_application_widgets/widgets/my_button.dart';
import 'package:flutter_application_widgets/widgets/email.dart';
import 'package:flutter_application_widgets/widgets/password.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          EmailInput(
            emailCallback: (email) {},
          ),
          PasswordInput(
            passwordCallback: (password) {},
          ),
          MyButton(myButtonClicked: () {})
        ],
      ),
    );
  }
}
