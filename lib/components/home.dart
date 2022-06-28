import 'package:flutter/cupertino.dart';

class HomeComponent extends StatelessWidget {
  final String image;
  final String text;

  const HomeComponent({Key? key, required this.image, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Image.asset(image), Text(text)],
    );
  }
}
