import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class PhoneNumberFiled extends StatelessWidget {
  const PhoneNumberFiled({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Phone Number',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 128, 125, 125)),
        ),
        const SizedBox(
          height: 10,
        ),
        TextFormField(
          controller: TextEditingController()..text = 'E.g 1054540227',
          keyboardType: TextInputType.phone,
          style: const TextStyle(
              color: Color.fromARGB(255, 167, 163, 163),
              decorationColor: Colors.white,
              fontSize: 15),
          decoration: InputDecoration(
            // contentPadding: EdgeInsets.symmetric(vertical: 2),
            enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(3)),
                borderSide: BorderSide(color: Colors.grey)),
            prefixIcon: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CountryCodePicker(
                  // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                  initialSelection: '+20',
                  showFlagMain: false,
                  favorite: const ['+20', 'EG'],
                  textStyle: const TextStyle(
                      color: Colors.black,
                      decorationColor: Colors.white,
                      fontSize: 15),
                  showFlag: true,
                ),
                const Icon(Icons.keyboard_arrow_down_outlined)
              ],
            ),
          ),
        ),
      ],
    );
  }
}
