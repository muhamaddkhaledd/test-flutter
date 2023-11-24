import 'package:flutter/material.dart';

class shoploginscreen extends StatelessWidget {
var formkey = GlobalKey<FormState>();
var emailcontroler = TextEditingController();
var passwordcontroler = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formkey,
              child: Column(
                children: [
                  Text('Login',style: TextStyle(fontSize: 30),),
                  TextFormField(
                    controller: emailcontroler,
                    keyboardType: TextInputType.emailAddress,
                    validator: (value)
                    {
                      if(value!.isEmpty)
                      {
                        return 'enter email';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20,),
                  TextFormField(

                    controller: passwordcontroler,
                    obscureText: true,
                    validator: (value)
                    {
                      if(value!.isEmpty)
                      {
                        return 'enter password';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20,),
                  Container(
                    width: double.infinity,
                    child: MaterialButton(
                      onPressed: (){
                        if(formkey.currentState!.validate())
                        {
                          print(emailcontroler.text);
                          print(passwordcontroler);
                        }
                      },
                      color: Colors.blueAccent,
                      child: Text('LOGIN'),

                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
