import 'package:egyptian_council_task11/widgets/date_piccker.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DateRaw extends StatefulWidget {
  String text;

  DateRaw({super.key, required this.text});
  @override
  State<DateRaw> createState() => _DateRawState(text: text);
}

class _DateRawState extends State<DateRaw> {

final String text;
  DateTime selectedDate = DateTime.now();
  
  TimeOfDay timeOfDay = TimeOfDay.now();

  _DateRawState({required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text , style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.bold, fontSize: 20),),
        SizedBox(width: 20,),
        Text('${selectedDate.year}-${selectedDate.month}-${selectedDate.day}' , style: TextStyle(color: Colors.blue, fontSize: 16),),
        IconButton(onPressed: () async {
                        var result = await showDateTimePicker(context,
                            initialDate: selectedDate,
                            firstDate: DateTime(2023),
                            lastDate: DateTime(2025),
                            initialTime: TimeOfDay.now());
                        if (result != null) {
                          selectedDate = result;
                        }
                        setState(() {});
                      }, 
                      icon:Icon( Icons.calendar_month_rounded),
                      )
      ],
    );
  }
}