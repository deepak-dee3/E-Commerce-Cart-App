import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes/pages/purchase_tems.dart';

class choosing_items extends StatelessWidget{


  final List<String> items = ['APPLE','ORANGE','MANGO','PINEAPPLE','PAPAYA','CHERRY'];

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(

      body:Container(

        

          

        /*child:Column(
          children: [

            Row(
              children: [

                Container(
                  width:150,
                  height:150,
                  color:Colors.red,
                ),

                Container(
                  width:150,
                  height:150,
                  color:Colors.yellow,
                ),

              ],
            )
          ],
        )*/

      /* child:  GridView.count(crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        
        children: [

          SizedBox(height:80),
           SizedBox(height:80),


          Container(
            margin: EdgeInsets.all(15),
            
            width:100,height: 100,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Colors.blue,),
          ),
          Container(
            margin: EdgeInsets.all(15),
            
            width:100,height: 100,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Colors.blue,),
          ),
           Container(
            margin: EdgeInsets.all(15),
            //color:Color.fromARGB(255, 27, 236, 90),
            width:100,height: 100,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Colors.blue,),
          ),
          Container(
            margin: EdgeInsets.all(15),
            //color:Color.fromARGB(255, 217, 15, 214),
            width:100,height: 100,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Colors.blue,),
          ),
          

          


        ],
        )*/


        child: ListView(
          scrollDirection: Axis.vertical,
          
          children: [

            SizedBox(height: 50,),
            Container(
              alignment: Alignment.center,
              
              margin: EdgeInsets.all(30),
              //color: Colors.blue,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.blue),
              width: 250,
              height: 100,

              child:Row(children: [

                Padding(padding:EdgeInsets.all(10),child:Icon(Icons.person),),
                SizedBox(height: 1,),

                Padding(padding:EdgeInsets.all(20),child:Text('PROFILE       ',style: TextStyle(fontWeight: FontWeight.bold),),),
                GestureDetector(onTap: (){},child:Padding(padding:EdgeInsets.only(left:100),child:Icon(Icons.arrow_circle_right),),),


              ],),
            ),

            
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(30),
              //color: Colors.blue,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.blue),
              width: 250,
              height: 100,

              child:Row(children: [
                Padding(padding:EdgeInsets.all(10),child:Icon(Icons.shopping_bag_outlined),),

                Padding(padding:EdgeInsets.all(20),child:Text('PURCHASE  ',style: TextStyle(fontWeight: FontWeight.bold),),),
                GestureDetector(onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) => purchase_items()));
                },child:Padding(padding:EdgeInsets.only(left:100),child:Icon(Icons.arrow_circle_right),),),


              ],),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(30),
              //color: Colors.blue,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.blue),
              width: 250,
              height: 100,

              child:Row(children: [

                Padding(padding:EdgeInsets.all(10),child:Icon(Icons.view_agenda),),

                Padding(padding:EdgeInsets.all(20),child:Text('VIEW ITEMS',style: TextStyle(fontWeight: FontWeight.bold),),),
                GestureDetector(onTap: (){},child:Padding(padding:EdgeInsets.only(left:100),child:Icon(Icons.arrow_circle_right),),),


              ],),
            ),
            
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(30),
              //color: Colors.blue,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.blue),
              width: 250,
              height: 100,

              child:Row(children: [
                Padding(padding:EdgeInsets.all(10),child:Icon(Icons.settings),),

                Padding(padding:EdgeInsets.all(20),child:Text('SETTINGS    ',style: TextStyle(fontWeight: FontWeight.bold),),),
                GestureDetector(onTap: (){},child:Padding(padding:EdgeInsets.only(left:100),child:Icon(Icons.arrow_circle_right),),)


              ],),
            ),
          ],
        )
    ));
  }

}