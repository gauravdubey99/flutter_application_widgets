import 'package:flutter/material.dart';
import 'package:flutter_application_widgets/constant/regex_pattern.dart';

typedef MyEmailCallback = void Function(String email);

class EmailInput extends StatefulWidget {
  final MyEmailCallback emailCallback;
  const EmailInput({super.key, required this.emailCallback});

  @override
  State<EmailInput> createState() => _EmailInputState();
}

class _EmailInputState extends State<EmailInput> {
  final FocusNode focusNode = FocusNode();
  String emailValue = "";
  bool isValidEmailOrEmpty = true;

  @override
  void initState() {
    focusNode.addListener(() {
      if (!focusNode.hasFocus) {
        setState(() {
          isValidEmailOrEmpty = emailValue.isEmpty ||
              RegExp(RegexPatterns.EmailPattern).hasMatch(emailValue);
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
          color:
              isValidEmailOrEmpty ? Colors.blue.shade600 : Colors.red.shade600),
      onChanged: (value) {
        widget.emailCallback(value);
        emailValue = value;
      },
      focusNode: focusNode,
      maxLines: 1,
      decoration: InputDecoration(
        label: Text("Email",
            style: TextStyle(
                color: isValidEmailOrEmpty
                    ? Colors.blue.shade600
                    : Colors.red.shade600)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(
                color: isValidEmailOrEmpty
                    ? Colors.blue.shade600
                    : Colors.red.shade600)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(
                color: isValidEmailOrEmpty
                    ? Colors.blue.shade600
                    : Colors.red.shade600)),
      ),
    );
  }
}
