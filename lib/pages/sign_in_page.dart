
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:notes/pages/choosing_items.dart';

class signup_page extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    

    return Scaffold(

      body:Container(
        
        child:Column(
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

              Navigator.push(context, MaterialPageRoute(builder: (context) => choosing_items()));
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
    );
  }

}