
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test1/cubit/cubit.dart';
import 'package:test1/cubit/states.dart';

class insta2 extends StatelessWidget {
  const insta2({super.key});




  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => appcubit(),
      child: BlocConsumer<appcubit,appstates>(
        listener: (context,appstates state) {} ,
        builder: (context,appstates state) {
          appcubit cubit = appcubit.get(context);
          return Scaffold(


            bottomNavigationBar: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                onTap: (value) {
                  cubit.changeindex(value);
                },
                currentIndex: cubit.currentindex,
                items: const [
                  BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black,),label: 'home',),
                  BottomNavigationBarItem(icon: Icon(Icons.search,color: Colors.black,),label: 'search',),
                  BottomNavigationBarItem(icon: Icon(Icons.video_collection_sharp,color: Colors.black,),label: 'reels',),
                  BottomNavigationBarItem(icon: Icon(Icons.shopping_bag,color: Colors.black,),label: 'store',),
                  BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.black,),label: 'profile',),

                ]),
            body: cubit.screens[cubit.currentindex],
          );
        },

      ),
    );
  }
}
