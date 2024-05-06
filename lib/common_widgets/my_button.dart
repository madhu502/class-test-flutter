import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  final String text;

  const MyButton({super.key, required this.text});

  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  bool isVisible = true;
  bool isFirstClick = true;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isVisible,
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            if (isFirstClick) {
              
              isFirstClick = false;
            } else {
             
              isVisible = false;
            }
          });
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            isFirstClick
                ? Colors.blue
                : Colors.purple, // Change color on first click
          ),
        ),
        child: Center(
            child: Text(
          widget.text,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 40,
          ),
        )),
      ),
    );
  }
}
