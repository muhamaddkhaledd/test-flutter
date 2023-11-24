import 'package:flutter/material.dart';
import 'package:test1/bmi_result.dart';

class bmi_calculator extends StatefulWidget {
  @override
  State<bmi_calculator> createState() => _bmi_calculatorState();
}

class _bmi_calculatorState extends State<bmi_calculator> {
Color color_ch =Color(0xff101323);
bool ismale = true;
double heigth = 40;
int weigth = 100;
int age =15;

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xff0a0f1e),
      appBar: AppBar(backgroundColor: Color(0xff101323),title: Text('BMI CALCULATOR',style: TextStyle(fontWeight: FontWeight.bold),),),
      body: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Column(
          children:
          [
            Expanded(
              child: Container(
                child: Row(
                  children:
                  [
                    Expanded(


                        child: GestureDetector(


                          onTap:() {
                            setState(() {
                              ismale=true;
                            });


                          } ,
                          child: Container(

                            color:ismale ? Colors.cyanAccent : color_ch ,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children:
                                [
                                  Icon(Icons.male,size: 120,color: Colors.white,),
                                  Text('MALE',style: TextStyle(fontSize: 20,color: Colors.grey)),
                                ]
                              ),
                            ),
                          ),
                        ),

                    ),
                    SizedBox(width: 20,),
                    Expanded(

                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              ismale=false;

                            });
                          },
                          child: Container(
                            color: ismale? color_ch : Colors.cyanAccent,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: GestureDetector(
                                onTap: (){},
                                child: Column(
                                    children:
                                    [
                                      Icon(Icons.female,size: 120,color: Colors.white,),
                                      Text('FEMALE',style: TextStyle(fontSize: 20,color: Colors.grey)),
                                    ]
                                ),
                              ),
                            ),
                          ),
                        ),

                    ),
                  ],
                ),

              ),
            ),
            SizedBox(height: 20,),
            Expanded(child:
                Container(
                  color: Color(0xff101323),
                  child: Column(
                    children:
                    [
                      Text('HEIGHT',style: TextStyle(fontSize: 20,color: Colors.white30),),
                      Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('${heigth.round()}',style: TextStyle(fontSize: 60,color: Colors.white,fontWeight: FontWeight.bold),),
                          Text('cm',style: TextStyle(color: Colors.grey,fontSize: 20),),
                        ],
                      ),
                      Slider(value: heigth,
                        min: 10,
                        max: 200,

                        onChanged:(value) {
                        setState(() {
                          heigth=value;

                        });

                      },)

                    ],
                  ),
                ),
            ),
            SizedBox(height: 20,),
            Expanded(
              child: Container(

                child: Row(
                  children:
                  [
                    Expanded(
                      child: Container(

                        color: Color(0xff101323),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                            Text('WEIGTH',style: TextStyle(fontSize: 30,color: Colors.white),),
                            Text('${weigth.round()}',style: TextStyle(fontSize: 30,color: Colors.white),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                              FloatingActionButton(onPressed: (){
                                setState(() {
                                  weigth++;
                                });
                              },child: Text('+'),),
                              SizedBox(width: 10,),
                              FloatingActionButton(onPressed: (){
                                setState(() {
                                  weigth--;
                                });
                              },child: Text('-'),),
                            ],),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Expanded(
                      child: Container(
                        color: Color(0xff101323),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                            Text('Age',style: TextStyle(fontSize: 30,color: Colors.white),),
                            Text('${age.round()}',style: TextStyle(fontSize: 30,color: Colors.white),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(onPressed: (){
                                  setState(() {
                                    age++;
                                  });
                                },child: Text('+'),),
                                SizedBox(width: 10,),
                                FloatingActionButton(onPressed: (){
                                  setState(() {
                                    age--;
                                  });
                                },child: Text('-'),),
                              ],),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              child: MaterialButton(
                color: Colors.blue,
                height: 50,

                onPressed: () {
                  setState(() {
                    Navigator.push(context, DialogRoute(context: context, builder:(context) => result(heigth,weigth,age),),);
                  });

              },
                child: Text('calc',style: TextStyle(fontSize: 20,color: Colors.white),),
              ),
            )


          ],

        ),
      ),

    );
  }
}
