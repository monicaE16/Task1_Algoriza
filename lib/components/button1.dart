import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String myText;
  const MyButton({
    Key? key,
    required this.myText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      minWidth: double.infinity,
      height: 60,
      color: Colors.teal,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Text(
        myText,
        style: const TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }
}
