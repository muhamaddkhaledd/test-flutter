import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed:()
        {
          print('hi');
        },  icon: Icon(Icons.menu)),
        title: Text('welcome'),
      actions:
      [
        IconButton(onPressed: ()
        {
          print('search');
        }, icon: Icon(Icons.search))
      ],
      ),
      body: SingleChildScrollView(

        child: Container(
          width: double.infinity,


          child: Column(
            mainAxisSize: MainAxisSize.max,



            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:
            [
              Container(
                color: Colors.red,
                child: Text('hello' ,style: TextStyle(fontSize: 50),)
              ),


            ],

          ),
        ),
      )
    );
  }
}