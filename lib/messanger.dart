import 'package:flutter/material.dart';

class Messanger extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(

          children:
          [
            CircleAvatar(backgroundColor: Colors.blueAccent,),
            SizedBox(width: 15,),
            Text('chats',style:TextStyle(color: Colors.black ,fontSize: 30) , ),
          ],

        ),
        actions: [ IconButton(onPressed: () {

        }, icon:Icon(Icons.search),color: Colors.blueAccent, ),]

      ),
      body: Column(

      ),
    );
  }
}
