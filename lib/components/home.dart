import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeComponent extends StatelessWidget {
  final String image;
  final String text;
  final String second;

  const HomeComponent(
      {Key? key, required this.image, required this.text, required this.second})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image),
        Center(
          child: Text(
            text,
            style: const TextStyle(
                color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        Center(
          child: Text(
            second,
            style: const TextStyle(
                color: Colors.grey, fontSize: 15, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
