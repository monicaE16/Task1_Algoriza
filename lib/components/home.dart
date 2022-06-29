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
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(image),
        Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.w600),
        ),
        Center(
          child: Text(
            second,
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: Color.fromARGB(255, 114, 101, 101),
                fontSize: 20,
                fontWeight: FontWeight.w600),
          ),
        )
      ],
    );
  }
}
