import 'package:flutter/material.dart';

class result extends StatefulWidget {
  final double heigth ;
  final int weigth ;
  final int age ;
result(@required this.heigth,@required this.weigth,@required this.age);
  @override
  State<result> createState() => _resultState();
}

class _resultState extends State<result> {





  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff0a0f1e),
        appBar: AppBar(backgroundColor: Color(0xff101323),title: Text('BMI RESULT',style: TextStyle(fontWeight: FontWeight.bold),),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Result',style: TextStyle(fontSize: 60,color: Colors.white),),
            Text('Heigth: ${widget.heigth.round()}',style: TextStyle(fontSize: 60,color: Colors.white),),
            Text('Age: ${widget.age.round()}',style: TextStyle(fontSize: 60,color: Colors.white),),
            Text('Weigth: ${widget.weigth.round()}',style: TextStyle(fontSize: 60,color: Colors.white),),
          ],
        ),
      ),


    );
  }
}
