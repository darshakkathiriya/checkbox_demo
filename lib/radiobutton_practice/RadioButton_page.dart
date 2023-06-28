import 'package:flutter/material.dart';

class RadioButton extends StatefulWidget {
  const RadioButton({Key? key}) : super(key: key);

  @override
  State<RadioButton> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {

  String male = "Male";
  String female = "Female";
  String gvalue = "Female";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Radio(
            value: male,
            groupValue: gvalue,
            onChanged: (value) {
              print(value);
              setState(() {
                gvalue = value!;
              });
            },
          ),
          RadioListTile(
            title: Text(female),
            value: female,
            groupValue: gvalue,
            onChanged: (value) {
              setState(() {
                gvalue = value!;
              });
            },
          )
        ],
      ),
    );
  }
}
