import 'package:flutter/material.dart';
import 'package:flutter_application_widgets/widgets/email.dart';

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
          EmailInput(
            emailCallback: (email) {},
          )
        ],
      ),
    );
  }
}
