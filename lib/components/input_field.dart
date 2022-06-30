import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String name;
  final String initialText;
  final IconData? icon;
  const InputField({
    required this.name,
    required this.initialText,
    this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 128, 125, 125)),
        ),
        const SizedBox(
          height: 10,
        ),
        TextFormField(
          controller: TextEditingController()..text = initialText,
          keyboardType: TextInputType.text,
          style: const TextStyle(
              color: Color.fromARGB(255, 167, 163, 163),
              decorationColor: Colors.white,
              fontSize: 15),
          decoration: const InputDecoration(
            // suffixIcon: Icon(),
            // contentPadding: EdgeInsets.symmetric(vertical: 2),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.zero),
                borderSide: BorderSide(color: Colors.grey)),
          ),
        ),
      ],
    );
  }
}
