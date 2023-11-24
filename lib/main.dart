import 'package:flutter/material.dart';
import 'package:test1/Truth%20or%20dare%20app/main_truth_or_dare.dart';
import 'package:test1/bmi_result.dart';
import 'package:test1/bmicalculator.dart';
import 'package:test1/data.dart';
import 'package:test1/insta_app/instagram.dart';
import 'package:test1/insta_app2/instagram.dart';
import 'package:test1/login.dart';

//import 'package:test1/Home%20screen.dart';
//import 'package:test1/login.dart';
import 'package:test1/messanger.dart';
import 'package:test1/facebook.dart';
import 'package:test1/names.dart';
import 'package:test1/news%20app/news_home.dart';
import 'package:test1/onboarding/onboarding.dart';
import 'package:test1/tasbe7.dart';

import 'onboarding/shop.dart';

void main() {
  runApp(Myapp());
}
class Myapp extends StatelessWidget
{
  @override
  Widget build (BuildContext context)
  {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       theme: ThemeData(
         appBarTheme: AppBarTheme(backgroundColor: Colors.white,titleTextStyle: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),iconTheme: IconThemeData(color: Colors.black),),
         bottomNavigationBarTheme: BottomNavigationBarThemeData(
           selectedItemColor: Colors.deepOrange,
           elevation: 20,

         ),
         scaffoldBackgroundColor: Colors.white,
       ),
       home: onboardingscreen(),

     );
  }

}