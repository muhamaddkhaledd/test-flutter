import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:test1/Truth%20or%20dare%20app/home_trurh.dart';

class truthordare extends StatefulWidget {
  @override
  State<truthordare> createState() => _truthordareState();
}

class _truthordareState extends State<truthordare> {
  String name='';
  late Database database ;
  void createdatabase() async
  {

     database= await openDatabase(
        'todo.db',
      version: 1,
      onCreate: (database, version) async{
          print('database created');
         await database.execute('CREATE TABLE tasks (id INTEGER PRIMARY KEY, player TEXT)');
         print('table created');
      },
      onOpen: (database) {
          print('database opened');

      },
    );
  }
void insertdata(String name)async
{
await database.transaction((txn) async{
   txn.rawInsert('INSERT INTO tasks (player) VALUES ("$name")');
   print('data aded = "$name"');
} );
}


@override
  void initState() {
    // TODO: implement initState
    super.initState();
    createdatabase();
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Truth Or Dare',style: TextStyle(fontSize: 25),),
        centerTitle:true ,
        elevation: 0,
        backgroundColor: Colors.pink,

      ),
       body: Center(
         child: SingleChildScrollView(
           child: Padding(
             padding: const EdgeInsets.all(10.0),
             child: Column(
               children: [
                 SizedBox(height: 100,),
                 Text('Are You Ready ??',style: TextStyle(fontSize: 30),),

                 SizedBox(height: 50,),
                 MaterialButton(onPressed: (){}
                   ,color: Colors.pinkAccent,elevation: 0,highlightElevation: 0,shape: Border.all(width: 2,),child: Text('Start Game',style: TextStyle(color: Colors.white,fontSize: 30),),height: 60,),
                 SizedBox(height: 50,),
                 MaterialButton(onPressed: (){
                   setState(() {
                     insertdata(name);
                     name='';
                   });
                 }
                   ,color: Colors.pinkAccent,elevation: 0,highlightElevation: 0,shape: Border.all(width: 2,),child: Text('Add a Player',style: TextStyle(color: Colors.white,fontSize: 30),),height: 60,),
                 SizedBox(height: 30,),
                 Text('players',style: TextStyle(fontSize: 30)),
                 TextFormField(onChanged: (value) {
                   setState(() {
                     value=name;
                   });
                 },),
                 SingleChildScrollView(


                 )

               ],
             ),
           ),
         ),
       ),
    );
  }
}
