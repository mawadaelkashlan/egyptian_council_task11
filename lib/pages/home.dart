import 'package:egyptian_council_task11/pages/rooms.dart';
import 'package:egyptian_council_task11/widgets/check_box.dart';
import 'package:egyptian_council_task11/widgets/date_raw.dart';
import 'package:egyptian_council_task11/widgets/radio_button.dart';
import 'package:egyptian_council_task11/widgets/slider_row.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text('Android ATC Hotel',style: TextStyle(color: Colors.white, fontSize: 25,),),
        
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Container(
              height: 250,
              child: Center(child: Image.asset('assets/images/hotel.jpg'))),
            DateRaw(text: 'Check-In-Date :'),
            DateRaw(text: 'Check-Out-Date :'),
            SlidrRow(text: 'Adults',),
            SlidrRow(text: 'Children'),
            Text('Extras :' , style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.bold, fontSize: 20),),
            CheckBoxRow(text: 'BreakFast (10 USD/Day)',),
            CheckBoxRow(text: 'Internet WiFi (5 USD/Day)',),
            CheckBoxRow(text: 'Parking (5 USD/Day)',),
            CheckBoxRow(text: 'Swimming pool (5 USD/Day)',),
            Text('Views :' , style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.bold, fontSize: 20),),
            RadioButton(),
            Center(
              child: ElevatedButton(
                style: ButtonStyle(backgroundColor: WidgetStateProperty.all(Colors.deepOrange)),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Rooms()));
                }, child: Text('Check Rooms and Rates', style: TextStyle(color: Colors.white , fontSize: 20),)),
            ),
          ],),
        ),
      ),
    );
  }
}