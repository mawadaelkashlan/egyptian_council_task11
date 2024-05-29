import 'package:flutter/material.dart';

class CheckBoxRow extends StatefulWidget {
  final String text;
  const CheckBoxRow({super.key, required this.text});

  @override
  State<CheckBoxRow> createState() => _CheckBoxRowState(text: text);
}

class _CheckBoxRowState extends State<CheckBoxRow> {
  bool isChecked = false;
  final String text;

  _CheckBoxRowState({required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
          children: [
            Checkbox(
              activeColor: Colors.blue,
                value: isChecked,
                onChanged: (value) {
                  isChecked = !isChecked;
                  setState(() {});
                }),
                SizedBox(width: 10,),
            Text(text),
          ],
        );
  }
}