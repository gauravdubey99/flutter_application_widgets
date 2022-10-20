import 'package:flutter/material.dart';

typedef MyButtonClicked = void Function();

class MyButton extends StatelessWidget {
  final MyButtonClicked myButtonClicked;
  const MyButton({super.key, required this.myButtonClicked});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ButtonStyle(
          animationDuration: const Duration(seconds: 5),
          backgroundColor: const MaterialStatePropertyAll(Colors.green),
          elevation: MaterialStatePropertyAll(10.toDouble()),
          minimumSize:
              MaterialStatePropertyAll(Size(160.toDouble(), 60.toDouble())),
          padding: MaterialStatePropertyAll(EdgeInsets.all(20.toDouble()))),
      clipBehavior: Clip.hardEdge,
      onPressed: () {
        myButtonClicked();
      },
      child: Text("Button",
          style: TextStyle(color: Colors.white, fontSize: 20.toDouble())),
    );
  }
}
