import 'package:flutter/material.dart';

class SlidrRow extends StatefulWidget {
  final String text;
  const SlidrRow({super.key, required this.text});

  @override
  State<SlidrRow> createState() => _SlidrRowState(text:text );
}

class _SlidrRowState extends State<SlidrRow> {
  final String text;
  double sliderValue = 1;

  _SlidrRowState({required this.text});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('${text} : ${sliderValue}' , style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.bold, fontSize: 20),),
        SizedBox(width: 10,),
        Slider(
          activeColor: Colors.blue,
          divisions: 10,
                max: 10,
                value: sliderValue, onChanged: (value){
          sliderValue = value;
          setState(() {});
        })
      ],
    );
  }
}