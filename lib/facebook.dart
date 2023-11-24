import 'package:flutter/material.dart';
import 'package:flutter/src/painting/image_provider.dart';

class Facebook extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('facebook', style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold , fontSize: 30) ),
        actions: 
        [
          CircleAvatar(
            backgroundColor: Colors.blueGrey[100],
            radius: 20,

            child: IconButton(onPressed:  () 
            {
              
            }, icon: Icon(Icons.search,color: Colors.white,size: 27,)),
          ),
          SizedBox(width: 5,),
          CircleAvatar(
            backgroundColor: Colors.blueGrey[100],
            radius: 20,

            child: IconButton(onPressed:  ()
            {

            }, icon: Icon( Icons.mail,color: Colors.white,size: 25,)),
          ),
          SizedBox(width: 5,),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(

          children:
          [

              TextField(


                    decoration: InputDecoration(
                      border: InputBorder.none,

                      //labelText:'Whats on your mind?' ,
                      labelStyle: TextStyle(color: Colors.black),
                      hintText: 'Whats on your mind?',

                      prefixIcon:Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: CircleAvatar(
                          backgroundColor: Colors.blue,

                        ),
                      ),
                      suffixIcon:IconButton(onPressed: ()
                      {

                      }, icon: Icon(Icons.image)) ,


                ),



            ),
           
             SingleChildScrollView(
               child: Row(
                 children: [
                   Container(
                     

                     decoration: BoxDecoration(border: Border.all(width: 1 ,color: Colors.grey) ,borderRadius: BorderRadius.all(Radius.circular(8))),
                     child: Column(
                       
                       children: [
                         Image.network('https://pbs.twimg.com/media/C5R7LgeWMAEBruN.jpg',height: 100,),
                         Text('Shikabala')
                       ],
                     ),
                   ),
                 ],
               ),
             ),
              
            
          ],
        ),
      ),
    );
  }
}
