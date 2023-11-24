import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class home2 extends StatefulWidget {

  @override
  State<home2> createState() => _homeState();
}

class _homeState extends State<home2> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        elevation: 0,
        title: Text('INSTAGRAM',style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(onPressed: () {

          }, icon: Icon(Icons.add_box_outlined),
            color: Colors.black,),
          IconButton(onPressed: () {

          }, icon: Icon(Icons.heart_broken),
            color: Colors.black,),
          IconButton(onPressed: (){}, icon: Icon(Icons.message,color: Colors.black,)
          ),

        ],

      ) ,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),


                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,

                    children: [

                      Container(
                        width: 85,
                        child: Column(
                          children: [
                            GestureDetector( onTap: (){},onLongPress: (){},child: Stack(alignment: Alignment.bottomRight,children:[
                              CircleAvatar(backgroundColor: Colors.grey,child: Icon(Icons.person,size: 50,color: Colors.white,),radius: 35,),

                              CircleAvatar(backgroundColor: Colors.white,radius: 12,),
                              CircleAvatar(backgroundColor: Colors.blueAccent,radius: 10,),
                              Icon(Icons.add,color: Colors.white,size: 20),
                            ])),
                            SizedBox(height: 5,),
                            Text('Your story',style: TextStyle(fontSize: 15),maxLines: 1,overflow: TextOverflow.ellipsis,)
                          ],
                        ),
                      ),
                      Container(
                        width: 85,
                        child: Column(
                          children: [
                            GestureDetector( onTap: (){},onLongPress: (){},child:
                              CircleAvatar(backgroundColor: Colors.grey,child: Icon(Icons.person,size: 50,color: Colors.white,),radius: 35,),),
                            SizedBox(height: 5,),
                            Text('User',style: TextStyle(fontSize: 15),maxLines: 1,overflow: TextOverflow.ellipsis,)
                          ],
                        ),
                      ),
                      Container(
                        width: 85,
                        child: Column(
                          children: [
                            GestureDetector( onTap: (){},onLongPress: (){},child:
                            CircleAvatar(backgroundColor: Colors.grey,child: Icon(Icons.person,size: 50,color: Colors.white,),radius: 35,),),
                            SizedBox(height: 5,),
                            Text('User',style: TextStyle(fontSize: 15),maxLines: 1,overflow: TextOverflow.ellipsis,)
                          ],
                        ),
                      ),
                      Container(
                        width: 85,
                        child: Column(
                          children: [
                            GestureDetector( onTap: (){},onLongPress: (){},child:
                            CircleAvatar(backgroundColor: Colors.grey,child: Icon(Icons.person,size: 50,color: Colors.white,),radius: 35,),),
                            SizedBox(height: 5,),
                            Text('User',style: TextStyle(fontSize: 15),maxLines: 1,overflow: TextOverflow.ellipsis,)
                          ],
                        ),
                      ),
                      Container(
                        width: 85,
                        child: Column(
                          children: [
                            GestureDetector( onTap: (){},onLongPress: (){},child:
                            CircleAvatar(backgroundColor: Colors.grey,child: Icon(Icons.person,size: 50,color: Colors.white,),radius: 35,),),
                            SizedBox(height: 5,),
                            Text('User',style: TextStyle(fontSize: 15),maxLines: 1,overflow: TextOverflow.ellipsis,)
                          ],
                        ),
                      ),
                      Container(
                        width: 85,
                        child: Column(
                          children: [
                            GestureDetector( onTap: (){},onLongPress: (){},child:
                            CircleAvatar(backgroundColor: Colors.grey,child: Icon(Icons.person,size: 50,color: Colors.white,),radius: 35,),),
                            SizedBox(height: 5,),
                            Text('User',style: TextStyle(fontSize: 15),maxLines: 1,overflow: TextOverflow.ellipsis,)
                          ],
                        ),
                      ),
                      Container(
                        width: 85,
                        child: Column(
                          children: [
                            GestureDetector( onTap: (){},onLongPress: (){},child:
                            CircleAvatar(backgroundColor: Colors.grey,child: Icon(Icons.person,size: 50,color: Colors.white,),radius: 35,),),
                            SizedBox(height: 5,),
                            Text('User',style: TextStyle(fontSize: 15),maxLines: 1,overflow: TextOverflow.ellipsis,)
                          ],
                        ),
                      ),
                    ],
                  ),

              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    GestureDetector(

                      onTap: (){},
                      child: Row(
                        children: [
                          CircleAvatar(backgroundColor: Colors.grey,child: Icon(Icons.person,color: Colors.white,),),
                          SizedBox(width: 10,),
                          Text('user',style: TextStyle(fontSize: 15),),

                          //GestureDetector(onTap: (){},child: Text('...',style: TextStyle(fontSize: 25),),)
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      width: double.infinity,
                      height: 500,
                      color: Colors.grey,
                    ),
                    SizedBox(height: 10 ,),
                    Row(
                      children: [
                        GestureDetector(onTap: (){} ,child: Icon(Icons.heart_broken,color: Colors.black,)),
                        SizedBox(width: 10,),
                        Icon(Icons.mode_comment_rounded),
                        SizedBox(width: 10,),
                        Icon(Icons.send)
                      ],
                    ),
                    SizedBox(height: 20 ,),
                    //////
                    GestureDetector(

                      onTap: (){},
                      child: Row(
                        children: [
                          CircleAvatar(backgroundColor: Colors.grey,child: Icon(Icons.person,color: Colors.white,),),
                          SizedBox(width: 10,),
                          Text('user',style: TextStyle(fontSize: 15),),

                          //GestureDetector(onTap: (){},child: Text('...',style: TextStyle(fontSize: 25),),)
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      width: double.infinity,
                      height: 500,
                      color: Colors.grey,
                    ),
                    SizedBox(height: 10 ,),
                    Row(
                      children: [
                        GestureDetector(onTap: (){} ,child: Icon(Icons.heart_broken,color: Colors.black,)),
                        SizedBox(width: 10,),
                        Icon(Icons.mode_comment_rounded),
                        SizedBox(width: 10,),
                        Icon(Icons.send)
                      ],
                    ),
                    SizedBox(height: 20 ,),
                    //////
                    GestureDetector(

                      onTap: (){},
                      child: Row(
                        children: [
                          CircleAvatar(backgroundColor: Colors.grey,child: Icon(Icons.person,color: Colors.white,),),
                          SizedBox(width: 10,),
                          Text('user',style: TextStyle(fontSize: 15),),

                          //GestureDetector(onTap: (){},child: Text('...',style: TextStyle(fontSize: 25),),)
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      width: double.infinity,
                      height: 500,
                      color: Colors.grey,
                    ),
                    SizedBox(height: 10 ,),
                    Row(
                      children: [
                        GestureDetector(onTap: (){} ,child: Icon(Icons.heart_broken,color: Colors.black,)),
                        SizedBox(width: 10,),
                        Icon(Icons.mode_comment_rounded),
                        SizedBox(width: 10,),
                        Icon(Icons.send)
                      ],
                    ),
                    SizedBox(height: 20 ,),
                    //////
                    GestureDetector(

                      onTap: (){},
                      child: Row(
                        children: [
                          CircleAvatar(backgroundColor: Colors.grey,child: Icon(Icons.person,color: Colors.white,),),
                          SizedBox(width: 10,),
                          Text('user',style: TextStyle(fontSize: 15),),

                          //GestureDetector(onTap: (){},child: Text('...',style: TextStyle(fontSize: 25),),)
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      width: double.infinity,
                      height: 500,
                      color: Colors.grey,
                    ),
                    SizedBox(height: 10 ,),
                    Row(
                      children: [
                        GestureDetector(onTap: (){} ,child: Icon(Icons.heart_broken,color: Colors.black,)),
                        SizedBox(width: 10,),
                        Icon(Icons.mode_comment_rounded),
                        SizedBox(width: 10,),
                        Icon(Icons.send)
                      ],
                    ),
                    SizedBox(height: 20 ,),
                    //////
                  ],
                ),
              ),
            ),
          ],

        ),
      ),
    );
  }
}
