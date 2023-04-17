

import 'package:cateloge_app/utils/routes.dart';
import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
  
}

class _LoginPageState extends State<LoginPage> {
  // bool isEmpty=true;
  String name="";
  bool changeButton=false;
  final _formKey=GlobalKey<FormState>();
  moveToHome(BuildContext context)async{
    if(_formKey.currentState!.validate()){

    
     setState(() {
                      changeButton=true;
                    });
                    await Future.delayed(Duration(seconds: 1));
                    await Navigator.pushNamed(context, MyRoutes.homeRoute);
                    setState(() {
                      changeButton=false;
                    });
    
    
  }}
  @override
  Widget build(BuildContext context) {
    return  Material(
      // child: Center(
      //   child: Text("Login Page",
      //   style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.bold),


      //   ),
      // ),
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(children: [
            SizedBox(height: 10,),
            Image.asset(
              "assets/images/loign.png",
              fit: BoxFit.cover,
              ),
             const SizedBox(height: 20,
              // child: Text("hello"),
              ),
              
              Text("Welcome $name",style: TextStyle(
              //  fontStyle: FontStyle.italic,
                fontSize: 25,
                // color: Colors.red,
                fontWeight: FontWeight.bold
              ),),
              const SizedBox(height: 20,
              // child: Text("pujan don"),
              ),
             Padding(
               padding: const EdgeInsets.symmetric(vertical: 16 ,horizontal: 32),
               child: Column(children: [
                 TextFormField(
                  validator: (value) {
                    if(value!.isEmpty){
                      return(" Username field should not be empty");
                    }
                    return null;
                  },
                  onChanged: (value) {
                    
                    name=value;
                    setState(() {
                      
                    });
                  },
                  
                  decoration: const InputDecoration(
                    
                    labelText: "Username",
                    hintText: "Enter Username",
                    // labelText: "Username"
                  ),
                ),
                TextFormField(
                  validator: (value) {
                    if(value!.isEmpty){
                      return("Password field should not be empty");
                    }
                    else if(value.length<6){
                      return("Password must be greater than 6 characters");
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    hintText: "password"
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 50),
                InkWell(
                  onTap:(() => moveToHome(context))
                    
                    // setState(() {
                    //   changeButton=true;
                    // });
                    // await Future.delayed(Duration(seconds: 1));
                    // await Navigator.pushNamed(context, MyRoutes.homeRoute);
                    // setState(() {
                    //   changeButton=false;
                    // });
        ,
                  child:AnimatedContainer (
                    duration: Duration(seconds: 1),
                
                    height: 50,
                    width: changeButton ? 70:150,
                    // color: Colors.deepPurple,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(changeButton?50:10),
                
                    ),
                    child:  changeButton?Icon(Icons.done,color: Colors.white,):Text("Login",style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      letterSpacing: 1,
                    ),),
                  ),
                )
                // ElevatedButton(
                  
                //   child: Text("Login"),
                  
                //   onPressed: () {
                //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                //     // print("pujan");
                    
                //   },
                // )
               ],),
             )
              
            ],),
        ),
      )
    );
  }
}