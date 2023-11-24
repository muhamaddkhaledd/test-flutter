import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test1/cubit/cubit.dart';
import 'package:test1/cubit/states.dart';
import 'package:test1/news%20app/buisiness.dart';

class homenews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:(BuildContext context) =>  appcubit() ,
      child: BlocConsumer<appcubit,appstates>(

        listener: (BuildContext context, appstates state) {  },
        builder: (BuildContext context, appstates state) {
          appcubit cubit = appcubit.get(context);
          return Scaffold(
          appBar: AppBar(title: Text('News App'),
            elevation: 0,

            actions: [
              IconButton(onPressed: (){}, icon:  Icon(Icons.search))
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: cubit.index,
            onTap:(value) {
              cubit.changenews(value);

            },

            items: const [
              BottomNavigationBarItem(icon: Icon(CupertinoIcons.building_2_fill,color: Colors.black,),label: 'buisness'),
              BottomNavigationBarItem(icon: Icon(Icons.sports,color: Colors.black,),label: 'sports'),
              BottomNavigationBarItem(icon: Icon(Icons.science,color: Colors.black,),label: 'science'),
              BottomNavigationBarItem(icon: Icon(Icons.settings,color: Colors.black,),label: 'settings'),
            ],
          ),
          body: cubit.scr[cubit.index],
        );
          },

      ),
    );
  }
}
