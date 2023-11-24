

import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  var email=TextEditingController();
  var password=TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

          body: Padding(
            padding:const EdgeInsets.all(20),
            child: SingleChildScrollView(

              child: Column(


                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,


                children:
                [


                  Text('LOGIN',style: TextStyle(fontSize: 40 ,color: Colors.black ,fontWeight: FontWeight.bold),textAlign: TextAlign.center, ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'email',
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),

                          prefixIcon: Icon(Icons.mail)
                    ),

                    controller: email,
                    keyboardType: TextInputType.emailAddress,



                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'password',
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                        prefixIcon: Icon(Icons.lock)
                    ),
                    controller: password,
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,

                  ),
                  SizedBox(height: 20),
                  Container(

                    width: double.infinity,
                    child: MaterialButton(onPressed: ()
                    {

                      print(email);
                      print(password);


                    },


                      child: Text('Login' ,style: TextStyle(color: Colors.white),),
                      color: Colors.blue,


                    ),
                  ),


                ],

    ),
            ),
          ),
    );


  }
}
