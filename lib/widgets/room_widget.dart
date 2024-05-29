import 'package:flutter/material.dart';

class RoomWidget extends StatelessWidget {
  const RoomWidget({super.key, required this.imagePath, required this.text, required this.detailsText});
  final String imagePath;
  final String text;
  final String detailsText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
          BoxShadow(
           color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
        ),
        ]),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 100,
                    width: 100,
                    child: Image.asset(imagePath)),
                    SizedBox(width: 15,),
                  Text(text , style: TextStyle(color: Colors.deepOrange , fontWeight: FontWeight.bold,fontSize: 25),),
                  SizedBox(width: 15,),
                  Icon(Icons.arrow_circle_up_outlined, size: 30,),
                ],
              ),
              Text(detailsText, style: TextStyle(fontSize: 15),),
            ],
          ),
        ),
      ),
    );
  }
}