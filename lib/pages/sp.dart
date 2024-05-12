import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:notes/pages/sign_in_page.dart';

class home_page extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      resizeToAvoidBottomInset: false,

      body:Container(
        color: Colors.grey[50],
        child:Column(
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


             Container(
              width:330,
              height:60,
              //color: Colors.blue,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Color.fromARGB(255, 15, 15, 16),),
              child:Padding(padding:EdgeInsets.only(top:10),child:Text("Log In ",textAlign:TextAlign.center,style: TextStyle(color:Colors.blue,fontWeight: FontWeight.bold,fontSize: 18),)),
            ),
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

      
    );
  }

}