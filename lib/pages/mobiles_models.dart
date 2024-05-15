import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes/mobiles/one_plus.dart';
import 'package:notes/pages/apple.dart';


class choose_mobile_models extends StatelessWidget{

  final List<String> models = ["APPLE","ONE PLUS","RED MI","OPPO","VIVO","SAMSUNG","REAL ME","IQOO"];
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(

      appBar: AppBar(
        title: Text("  "),
      ),

      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        
        child:Column(children: [
      Row(children: [

       GestureDetector(onTap:(){

        Navigator.push(context,MaterialPageRoute(builder: (context) => apple()));
       },
        child:Padding(padding: EdgeInsets.only(left:30),child: Container(
          width: 150,
          height:170,
         // margin: EdgeInsets.all(5),
          //color:Colors.red,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Colors.blue,),

          child:Center(child:Text('${models[0]}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)),
        ),),),


        SizedBox(width: 10,),
       
       GestureDetector(onTap: (){
        Navigator.push(context,MaterialPageRoute(builder: (context) => one_plus_page()));
       },
        child: Padding(padding:EdgeInsets.only(left:20),child:Container(
          width: 150,
          height:170,
         // margin: EdgeInsets.all(5),
          //color:Colors.red,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Colors.blue,),
          child:Center(child:Text('${models[1]}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)),
        ),),),

      ],
      ),

      SizedBox(height: 32,),


      Row(children: [

       Padding(padding: EdgeInsets.only(left:30),child: Container(
          width: 150,
          height:170,
         // margin: EdgeInsets.all(5),
          //color:Colors.red,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Colors.blue,),
          child:Center(child:Text('${models[2]}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)),
        ),),
        SizedBox(width: 10,),
        Padding(padding:EdgeInsets.only(left:20),child:Container(
          width: 150,
          height:170,
         // margin: EdgeInsets.all(5),
          //color:Colors.red,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Colors.blue,),
          child:Center(child:Text('${models[3]}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)),
        ),),

      ],
      ),

      SizedBox(height: 32,),


      Row(children: [

       Padding(padding: EdgeInsets.only(left:30),child: Container(
          width: 150,
          height:170,
         // margin: EdgeInsets.all(5),
          //color:Colors.red,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Colors.blue,),
          child:Center(child:Text('${models[4]}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)),
        ),),
        SizedBox(width: 10,),
        Padding(padding:EdgeInsets.only(left:20),child:Container(
          width: 150,
          height:170,
         // margin: EdgeInsets.all(5),
          //color:Colors.red,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Colors.blue,),
          child:Center(child:Text('${models[5]}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)),
        ),),

      ],
      ),

      SizedBox(height: 32,),


      Row(children: [

       Padding(padding: EdgeInsets.only(left:30),child: Container(
          width: 150,
          height:170,
         // margin: EdgeInsets.all(5),
          //color:Colors.red,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Colors.blue,),
          child:Center(child:Text('${models[6]}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)),
        ),),
        SizedBox(width: 10,),
        Padding(padding:EdgeInsets.only(left:20),child:Container(
          width: 150,
          height:170,
         // margin: EdgeInsets.all(5),
          //color:Colors.red,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Colors.blue,),
          child:Center(child:Text('${models[7]}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)),
        ),),

      ],
      ),



      ])

      ));
  }

}