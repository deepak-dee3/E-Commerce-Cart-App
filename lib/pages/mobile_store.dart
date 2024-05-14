import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class mobile_store extends StatelessWidget{

  final List<String> items =  ['APPLE','RED MI', 'POCO' , 'SAMSUNG' , 'OPPO' , 'VIVO'  ];
  @override
  Widget build(BuildContext context) {
   
   return Scaffold(

   /* body:ListView.separated(itemCount: items.length,
    separatorBuilder: (context, index) => Divider(height: 10,thickness: 0,),
        itemBuilder: (context,index)
        {
          /*return ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 20,horizontal: 15),

            
            leading: Container(
              width: 200,
              height: 100,

              child: ListTile(
                shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),
            tileColor: Colors.blue,
            title:Text('${items[index]}')

              ),
              //child: Icon(Icons.abc),
            ),
            shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),
            tileColor: Colors.blue,
            //title:Text('${items[index]}')
          ); */

          return Padding(padding: EdgeInsets.only(left: 30,right: 30),child:Container(
            height: 100,
            //decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            
            child:ListTile(
              contentPadding: EdgeInsets.only(left:130,top:30),
              //shape: CircleBorder(eccentricity: 10),
              shape: BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
              tileColor: Colors.blue,
            title:Text('${items[index]}',style: TextStyle(fontWeight: FontWeight.bold),),
            //titleAlignment: ListTileTitleAlignment.center,


            )
          ));


        }) */

       /* body:SingleChildScrollView(scrollDirection: Axis.horizontal,
          child:Row(children:[ListView.builder(itemCount: items.length,scrollDirection: Axis.horizontal,
        itemBuilder: (context,index)
        {
          return ListTile(

            tileColor: Colors.amber,
            title: Text('${items[index]}'),

          );

        })])) */
        

       /* body:SingleChildScrollView(
  scrollDirection: Axis.horizontal,
  child: Row(
    children: <Widget>[
      ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('${items[index]}'),
            //subtitle: Text('Subtitle $index'),
            leading: Icon(Icons.account_circle),
            onTap: () {
              // Your onTap function for the item
            },
          );
        },
      ),
    ],
  ),
) */


     body:Column(children:[

      SizedBox(height: 70,),
      Container(
        margin: EdgeInsets.all(30),
      height: 200,
      child:ListView(

       physics:PageScrollPhysics(),
       shrinkWrap: false,
        
        scrollDirection: Axis.horizontal,

        children: [
          //SizedBox(height: 20,),

          InkWell(
            child: Container(
              width: 330,
              height: 200,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey),
              child: Center(child:Text('APPLE',style: TextStyle(fontWeight: FontWeight.bold),),),
            ),
          ),

          SizedBox(width: 10,),

          InkWell(
            child: Container(
              width: 330,
              height: 200,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey),
              child: Center(child:Text('ONE PLUS',style: TextStyle(fontWeight: FontWeight.bold),),),
            ),),
            SizedBox(width: 10,),

          InkWell(
            child: Container(
              width: 330,
              height: 200,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey),
              child: Center(child:Text('SAMSUNG',style: TextStyle(fontWeight: FontWeight.bold),),),
            ), ),

            SizedBox(width: 10,),

          InkWell(
            child: Container(
              width: 330,
              height: 200,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey),
              child: Center(child:Text('RED MI',style: TextStyle(fontWeight: FontWeight.bold),),),
            ), ),


            SizedBox(width: 10,),

          InkWell(
            child: Container(
              width: 330,
              height: 200,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey),
              child: Center(child:Text('POCO',style: TextStyle(fontWeight: FontWeight.bold),),),
            ), ),

            SizedBox(width: 10,),

          InkWell(
            child: Container(
              width: 330,
              height: 200,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey),
              child: Center(child:Text('VIVO',style: TextStyle(fontWeight: FontWeight.bold),),),
            ), ),

            SizedBox(width: 10,),

          InkWell(
            child: Container(
              width: 330,
              height: 200,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey),
              child: Center(child:Text('OPPO',style: TextStyle(fontWeight: FontWeight.bold),),),
            ), ),

            SizedBox(width: 10,),

          InkWell(
            child: Container(
              width: 330,
              height: 200,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey),
              child: Center(child:Text('REAL ME',style: TextStyle(fontWeight: FontWeight.bold),),),
            ), ),


        ],
      )
     )

        
   ]));
  }

}