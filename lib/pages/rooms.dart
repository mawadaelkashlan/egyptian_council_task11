import 'package:egyptian_council_task11/widgets/room_widget.dart';
import 'package:flutter/material.dart';

class Rooms extends StatelessWidget {
  const Rooms({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text('Rooms List',style: TextStyle(color: Colors.white, fontSize: 25,),),
        
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          RoomWidget(imagePath: 'assets/images/room1.jpg', text: 'King Room', detailsText: 'A room with a king sized bed',),
          RoomWidget(imagePath: 'assets/images/room2.jpg', text: 'Double Room', detailsText: 'A room assigned to two people',),
          RoomWidget(imagePath: 'assets/images/room3.jpg', text: 'Family Room', detailsText: 'A room assigned to three or four people',),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: ElevatedButton(onPressed: (){}, child: Text('Next'), style: ButtonStyle(backgroundColor: WidgetStateProperty.all(Colors.deepOrange), foregroundColor: WidgetStateProperty.all(Colors.white)),),
          )
        ],
      ),
    );
  }
}