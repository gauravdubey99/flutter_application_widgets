import 'package:flutter/material.dart';
import 'package:flutter_application_widgets/constant/regex_pattern.dart';

typedef MyPasswordCallBack = void Function(String password);

class PasswordInput extends StatefulWidget {
  final MyPasswordCallBack passwordCallback;
  const PasswordInput({super.key, required this.passwordCallback});

  @override
  State<PasswordInput> createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  final FocusNode focusNode = FocusNode();
  String passwordValue = "";
  bool isValidPasswordOrEmpty = true;

  @override
  void initState() {
    focusNode.addListener(() {
      if (!focusNode.hasFocus) {
        setState(() {
          isValidPasswordOrEmpty = passwordValue.isEmpty ||
              RegExp(RegexPatterns.PasswordPattern).hasMatch(passwordValue);
        });
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(
          color: isValidPasswordOrEmpty
              ? Colors.blue.shade600
              : Colors.red.shade600),
      onChanged: (value) {
        widget.passwordCallback(value);
        passwordValue = value;
      },
      focusNode: focusNode,
      maxLines: 1,
      decoration: InputDecoration(
        label: Text("Password",
            style: TextStyle(
                color: isValidPasswordOrEmpty
                    ? Colors.blue.shade600
                    : Colors.red.shade600)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(
                color: isValidPasswordOrEmpty
                    ? Colors.blue.shade600
                    : Colors.red.shade600)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(
                color: isValidPasswordOrEmpty
                    ? Colors.blue.shade600
                    : Colors.red.shade600)),
      ),
    );
  }
}
