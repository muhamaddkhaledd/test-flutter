import 'package:flutter/material.dart';
class usermodel
{
  final int? id;
  final String? name;
  final String? phone;
  usermodel({
    @required this.id,
    @required this.name,
    @required this.phone,
});
}
class Data extends StatelessWidget {
  List<usermodel> users =
  [
    usermodel(id: 1, name: 'mohamed', phone: '01143588294'),
    usermodel(id: 2, name: 'ahmed', phone: '010765466653'),
    usermodel(id: 3, name: 'zyad', phone: '012545488294'),
    usermodel(id: 1, name: 'mohamed', phone: '01143588294'),
    usermodel(id: 2, name: 'ahmed', phone: '010765466653'),
    usermodel(id: 3, name: 'zyad', phone: '012545488294'),
    usermodel(id: 1, name: 'mohamed', phone: '01143588294'),
    usermodel(id: 2, name: 'ahmed', phone: '010765466653'),
    usermodel(id: 3, name: 'zyad', phone: '012545488294'),
    usermodel(id: 1, name: 'mohamed', phone: '01143588294'),
    usermodel(id: 2, name: 'ahmed', phone: '010765466653'),


  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data'),
      ),
      body: ListView.separated(itemBuilder: (context, index) =>builduseritem(users[index]) ,
          separatorBuilder:  (context, index) => Container(color: Colors.grey[300],
          width: double.infinity,
          height: 1,),
          itemCount: users.length),
    );
  }
  Widget builduseritem(usermodel user) =>Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(
      children:  [
        Row(
          children: [
            CircleAvatar(radius: 30,child: Text('${user.id}',style: TextStyle(fontSize: 30),)),
            SizedBox(width: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('${user.name}',style: TextStyle(fontSize: 30)),
                Text('${user.phone}',style: TextStyle(color: Colors.grey),),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}



