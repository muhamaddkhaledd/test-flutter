import 'package:flutter/material.dart';
import 'package:test1/data.dart';
class nameitems
{
  final int? id;
  final String? name;
  final String? number;
  nameitems({
  @required this.id,
  @required this.name,
  @required this.number,
});
}

class Name extends StatelessWidget {
List <nameitems> itms =
[
  nameitems(id: 1, name: 'mohamed', number: '0137476574132323'),
  nameitems(id: 2, name: 'mohamed', number: '01347475132323'),
  nameitems(id: 12, name: 'fmofhartmed', number: '01341375r72323'),
  nameitems(id: 67, name: 'mohathttmed', number: '013417545632323'),
  nameitems(id: 13, name: 'yttymohamed', number: '0134132323'),
  nameitems(id: 7, name: 'mohametdd', number: '0134132367r7523'),
  nameitems(id: 9, name: 'mohamehtfhd', number: '01341327323'),
  nameitems(id: 10, name: 'mohamthhed', number: '01341325454323'),
  nameitems(id: 14, name: 'mortfrhthamed', number: '0134108032323'),
  nameitems(id: 1, name: 'mohamed', number: '0137476574132323'),
  nameitems(id: 2, name: 'mohamed', number: '01347475132323'),
  nameitems(id: 12, name: 'fmofhartmed', number: '01341375r72323'),
  nameitems(id: 67, name: 'mohathttmed', number: '013417545632323'),
  nameitems(id: 13, name: 'yttymohamed', number: '0134132323'),
  nameitems(id: 7, name: 'mohametdd', number: '0134132367r7523'),
  nameitems(id: 9, name: 'mohamehtfhd', number: '01341327323'),
  nameitems(id: 10, name: 'mohamthhed', number: '01341325454323'),
  nameitems(id: 14, name: 'mortfrhthamed', number: '0134108032323'),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Names'),),
      body: ListView.separated(itemBuilder: (context, index) => datas(itms[index]),
          separatorBuilder: (context, index) => Container(color: Colors.grey,width: double.infinity,height: 1,),
          itemCount: itms.length)
    );
  }
}
Widget datas(nameitems names) => Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Column(

    children: [

      Row(



        children:

        [



          CircleAvatar(radius: 30,child:Text('${names.id}') ,),

          SizedBox(width: 20,),

          Column(

            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              Text('${names.name}',style: TextStyle(fontSize: 30),),

              Text('${names.number}'),

            ],

          ),

        ],

      ),

    ],

  ),
);