
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:intl/intl.dart';
import 'package:notes/pages/choosing_items.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';

import 'package:firebase_core/firebase_core.dart';
//import 'firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:notes/pages/sp.dart';

class signup_page extends StatefulWidget{
  @override
  State<signup_page> createState() => _signup_pageState();
}

class _signup_pageState extends State<signup_page> {


  String email = ' ', password = ' ', username = ' ',phone = ' ';
  TextEditingController emailcontroller =  TextEditingController();
  TextEditingController passcontroller =  TextEditingController();
  TextEditingController namecontroller =  TextEditingController();
  TextEditingController phonecontroller =  TextEditingController();


  final _formkey= GlobalKey<FormState>();

  registration() async {
    if(password!=null)
    {
      try{
        UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);

        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Registered Successfully',style:TextStyle(fontSize: 20))));

        Navigator.push(context, MaterialPageRoute(builder: (context) => home_page()));

      }on FirebaseAuthException catch (e)
      {
        if(e.code == 'weak passord'){
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Password provided is too weak',style:TextStyle(fontSize: 20))));
        }else if(e.code == 'email-already-in-use')
        {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('email in use',style:TextStyle(fontSize: 20))));


        }


      }
    }
  }






  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      resizeToAvoidBottomInset: false,

      body:Container(
        
       child:Form( key: _formkey,child:Column(
          children: [

            SizedBox(height: 80,),

            Container(
              margin: EdgeInsets.zero,
              //alignment: Alignment.topLeft,
              child:Column(children:[
              
                Text("SHOPPING CART",style: TextStyle(fontFamily:'Lato' ,fontWeight: FontWeight.bold,fontSize: 25),textAlign: TextAlign.left,),
                
                
                ])
            ),

            SizedBox(height: 80,),
            

            Center(child:Container(
              width:340,
              height: 450,
              //color: Colors.blue,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.blue),
              child: Column(
                children: [

                  SizedBox(height:40),

                  Container(
              width:300,
              height:60,
              //color: Colors.blue,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Colors.white,),
              child:TextFormField(
                textAlign: TextAlign.center,

                
                
                decoration: InputDecoration(floatingLabelBehavior: FloatingLabelBehavior.auto,border: InputBorder.none,
                label: Text('  Enter Your Name *'),
                hintText: 'Username',
                suffixIcon: Icon(Icons.person),
                //hintTextDirection: TextDirection.rtl
                ),
              
              )
            ),
                  SizedBox(height: 40,),

                  Container(
              width:300,
              height:60,
              //color: Colors.blue,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Colors.white,),
              child:TextFormField(
                textAlign: TextAlign.center,

                validator: (value){
                    if(value == null || value.isEmpty)
                    {
                      return "Enter your user email";
                    }
                    return null;
                  },
                  controller: emailcontroller,
                
                decoration: InputDecoration(floatingLabelBehavior: FloatingLabelBehavior.auto,border: InputBorder.none,
                label: Text('  Enter your mail *'),
                hintText: 'Your Mail',
                suffixIcon: Icon(Icons.mail),
                //hintTextDirection: TextDirection.rtl
                ),
              

              )
            ),

            SizedBox(height:40),

            Container(
              width:300,
              height:60,
              //color: Colors.blue,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Colors.white,),
              child:TextFormField(
                textAlign: TextAlign.center,

                validator: (value){
                    if(value == null || value.isEmpty)
                    {
                      return "Enter your user password";
                    }
                    return null;
                  },
                  controller: passcontroller,
                
                decoration: InputDecoration(floatingLabelBehavior: FloatingLabelBehavior.auto,border: InputBorder.none,
                label: Text('  Enter your password *'),
                hintText: 'Your password',
                suffixIcon: Icon(Icons.lock),
                //hintTextDirection: TextDirection.rtl
                ),
              
              )
            ),
            SizedBox(height: 40,),

            Container(
              width:300,
              height:60,
              //color: Colors.blue,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Colors.white,),
              child:TextFormField(
                textAlign: TextAlign.center,
                
                decoration: InputDecoration(floatingLabelBehavior: FloatingLabelBehavior.auto,border: InputBorder.none,
                label: Text('  Conform password *'),
                hintText: 'Your password',
                suffixIcon: Icon(Icons.remove_red_eye_outlined),
                //hintTextDirection: TextDirection.rtl
                ),
              
              )
            ),

           

           

            

            



                ],
              ),
            ),
            ),

            SizedBox(height: 30,),

            GestureDetector(onTap:(){

              if(_formkey.currentState!.validate())
          {
            setState(() {
              email = emailcontroller.text.trim();
              username = namecontroller.text.trim();
              password = passcontroller.text.trim();

            });
          }

          registration();

              //Navigator.push(context, MaterialPageRoute(builder: (context) => choosing_items()));
            },
              child:Container(
              width:330,
              height:60,
              //color: Colors.blue,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Color.fromARGB(255, 15, 15, 16),),
              child:Padding(padding:EdgeInsets.only(top:10),child:Text("Sign In ",textAlign:TextAlign.center,style: TextStyle(color:Colors.blue,fontWeight: FontWeight.bold,fontSize: 18),)),
            ),),
            
        ],
        )
      )
    ));
  }
}