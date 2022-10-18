import 'package:flutter/material.dart';
import 'package:flutter_application_widgets/pages/login.dart';

void main() {
  runApp(MaterialApp(
    title: "LauncherScreen",
    initialRoute: "login",
    routes: {"login": ((context) => const LoginPage())},
  ));
}
