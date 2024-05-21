import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:notes/pages/choosing_items.dart';
import 'package:notes/pages/purchase_tems.dart';
import 'package:notes/pages/sign_in_page.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';

import 'package:firebase_core/firebase_core.dart';
//import 'firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';

class home_page extends StatefulWidget{
  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {


  String login_email = ' ', login_pass = ' ';

  TextEditingController login_emailcontroller = TextEditingController();
  TextEditingController login_passcontroller = TextEditingController();

  final login_formkey = GlobalKey<FormState>();

  userlogin() async{

    try{
      await FirebaseAuth.instance.signInWithEmailAndPassword(email: login_email, password: login_pass);
      Navigator.push(context, MaterialPageRoute(builder: (context) => choosing_items()));

    }on FirebaseAuthException catch (e)
      {
        if(e.code == 'user-not-found'){
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('No User found For That Email',style:TextStyle(fontSize: 20))));
        }else if(e.code == 'wrong-password')
        {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Wrong Password Provided By User',style:TextStyle(fontSize: 20))));


        }


      }
  }





  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      resizeToAvoidBottomInset: false,

      body:Container(
        color: Colors.grey[50],
        child:Form(key:login_formkey,child:Column(
          children: [

            SizedBox(height: 40,),

           

           /* Center(child:SizedBox(
  width: 250.0,
  height: 100,
  child: DefaultTextStyle(
  style: const TextStyle(
    fontSize: 20.0,
  ),
  child: AnimatedTextKit(
    animatedTexts: [
      WavyAnimatedText('Hello World',textAlign: TextAlign.center,textStyle: TextStyle(color: Colors.blue)),
      WavyAnimatedText('Look at the waves',textAlign: TextAlign.center,textStyle: TextStyle(color: Colors.blue)),
    ],
    isRepeatingAnimation: true,
    onTap: () {
      print("Tap Event");
    },
  ),
),
),),*/

            SizedBox(height:60),
            
            Center(child:Container(
              width:100,
              height:100,
              decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(20)),
              child:Icon(Icons.shopping_cart,size:50)
            )),

            SizedBox(height: 50,),


             /*Padding(padding:EdgeInsets.only(left:80),child:Container(
              width: 200,
              height: 100,
              child: DefaultTextStyle(style:TextStyle(fontSize: 30,fontWeight: FontWeight.bold),child: AnimatedTextKit(
                //repeatForever: true,
                animatedTexts: [

                FlickerAnimatedText("HELLO ",textAlign: TextAlign.center,textStyle: TextStyle(color: Colors.blue)),
                FlickerAnimatedText("BUDDY ",textAlign: TextAlign.center,textStyle: TextStyle(color: Colors.blue)),
                




              ]),),
            ),),*/

            SizedBox(height: 40,),

            Container(
              width:330,
              height:70,
              //color: Colors.blue,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color:Colors.blue,),
              child:TextFormField(
                controller: login_emailcontroller,
                validator: (value){
                    if(value == null || value.isEmpty)
                    {
                      return "Enter your user email";
                    }
                    return null;
                  },
                textAlign: TextAlign.center,
                
                decoration: InputDecoration(floatingLabelBehavior: FloatingLabelBehavior.auto,border: InputBorder.none,
                label: Text('  Enter your mail *'),
                hintText: 'Your Mail',
                suffixIcon: Icon(Icons.mail),
                hintTextDirection: TextDirection.rtl
                ),
              

              )
            ),

            SizedBox(height:40),
            Container(
              width:330,
              height:70,
              //color: Colors.blue,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color:Colors.blue),
              child:TextFormField(
                textAlign: TextAlign.center,
                 controller: login_passcontroller,
                validator: (value){
                    if(value == null || value.isEmpty)
                    {
                      return "Enter your user password";
                    }
                    return null;
                  },
                
                decoration: InputDecoration(floatingLabelBehavior: FloatingLabelBehavior.auto,border: InputBorder.none,
                label: Text('  Enter your password *'),
                hintText: 'Your password',
                suffixIcon: Icon(Icons.lock),
                hintTextDirection: TextDirection.rtl
                ),
              

              )
            ),

            SizedBox(height: 15,),

            Text("FORGOT PASSWORD ?",style:TextStyle(color: Color.fromARGB(255, 19, 19, 19),fontWeight: FontWeight.bold,fontSize: 10,),textAlign: TextAlign.start,),

            SizedBox(height: 70,),


             GestureDetector(
              onTap:(){

                 if(login_formkey.currentState!.validate())
          {
            setState(() {
              login_email = login_emailcontroller.text.trim();
              //username = namecontroller.text.trim();
              login_pass = login_passcontroller.text.trim();

            });
          }

          userlogin();

              },
              child:Container(
              width:330,
              height:60,
              //color: Colors.blue,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Color.fromARGB(255, 15, 15, 16),),
              child:Padding(padding:EdgeInsets.only(top:10),child:Text("Log In ",textAlign:TextAlign.center,style: TextStyle(color:Colors.blue,fontWeight: FontWeight.bold,fontSize: 18),)),
            ),),
            SizedBox(height: 20,),

            Text("(Or)",style:TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 10,),textAlign: TextAlign.start,),

            SizedBox(height: 20,),


            Row(children: [

                          Padding(padding:EdgeInsets.only(left:70),child:Text("Create new account?",style:TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 10,),textAlign: TextAlign.center,)),

                          GestureDetector(onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => signup_page()));
                          },child:Text("  click here to register",style:TextStyle(decoration: TextDecoration.underline,color: Color.fromARGB(255, 216, 17, 2),fontWeight: FontWeight.bold,fontSize: 10,),textAlign: TextAlign.start,),),



            ],),







          ],
        )
      )

      
    ));
  }
}