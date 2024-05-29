import 'package:flutter/material.dart';

class RadioButton extends StatefulWidget {
  const RadioButton({super.key});

  @override
  State<RadioButton> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Column(
       children: [
        Row(
          children: [
            Checkbox(
              activeColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                value: isChecked,
                onChanged: (value) {
                  isChecked = !isChecked;
                  setState(() {});
                }),
            Text('City view'),
          ],
        ),
        Row(
          children: [
            Checkbox(
              activeColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                value: isChecked==false ? true : false,
                onChanged: (value) {
                  isChecked = !isChecked;
                  setState(() {});
                }),
            Text('Sea view'),
          ],
        ),
      ],
    );
  }
}