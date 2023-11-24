import 'package:flutter/material.dart';

class Tasbe7 extends StatefulWidget {
  @override
  State<Tasbe7> createState() => _Tasbe7State();
}


class _Tasbe7State extends State<Tasbe7> {
 int tsbe7 =1;
@override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tasbe7"),),
      body :Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            Text('$tsbe7',style: TextStyle(fontSize: 60),),
            TextButton(onPressed: ()
            {
              setState(() {
                tsbe7++;
                if (tsbe7 > 100){
                tsbe7=0;
                }
              });

              print(tsbe7);
            }, child: Text('تسبيحه',style: TextStyle(fontSize: 40),),),
          ],
        ),
      ),
    );
  }
}
