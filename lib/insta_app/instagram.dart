import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test1/insta_app/home.dart';
import 'package:test1/insta_app/profile.dart';
import 'package:test1/insta_app/rells.dart';
import 'package:test1/insta_app/search.dart';
import 'package:test1/insta_app/store.dart';

class insta extends StatefulWidget {

  @override
  State<insta> createState() => _instaState();
}

class _instaState extends State<insta> {
  int index=0;
  List<Widget> screens =
      [
        home(),
        search(),
        rells(),
        store(),
        profile(),
      ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
          onTap: (value) {
            setState(() {
              index=value;
            });
          },
          currentIndex: index,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black,),label: 'home',),
            BottomNavigationBarItem(icon: Icon(Icons.search,color: Colors.black,),label: 'search',),
            BottomNavigationBarItem(icon: Icon(Icons.video_collection_sharp,color: Colors.black,),label: 'reels',),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_bag,color: Colors.black,),label: 'store',),
            BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.black,),label: 'profile',),

          ]),
      body: screens[index],
    );
  }
}
