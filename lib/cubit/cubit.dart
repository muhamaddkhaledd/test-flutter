import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test1/cubit/states.dart';
import 'package:test1/news%20app/buisiness.dart';
import 'package:test1/news%20app/science.dart';
import 'package:test1/news%20app/settings.dart';
import 'package:test1/news%20app/sports.dart';

import '../insta_app2/home.dart';
import '../insta_app2/profile.dart';
import '../insta_app2/rells.dart';
import '../insta_app2/search.dart';
import '../insta_app2/store.dart';

class appcubit extends Cubit<appstates>
{
  appcubit():super (initialstate());
  static appcubit get(context) => BlocProvider.of(context);
  int currentindex=0;
  int index=0;

  List<Widget> screens =
  [
    home2(),
    search2(),
    rells2(),
    store2(),
    profile2(),
  ];

  List<Widget> scr = [
    buisness_screen(),
    sports_screen(),
    science_screen(),
    settings_screen(),
  ];
  void changeindex(index)
  {
    currentindex = index;
    emit(appchangebtnstate());
  }
  void changenews(index)
  {
    this.index=index;
    emit(newsappchangestate());
  }


}