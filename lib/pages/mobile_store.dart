import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class mobile_store extends StatelessWidget{

  final List<String> items =  ['APPLE','RED MI', 'POCO' , 'SAMSUNG' , 'OPPO' , 'VIVO'  ];

  //final List<String> inner_items = ['model 1','model 2','model 3','model 4','model 5','model 6','model 7','model 8','model 9','model 10'];

  final List<Map<String,dynamic>> inner_items = [

    {
      "title" : "iPhone 15",
      "price" : " 100000",
      "images" : "https://th.bing.com/th?q=iPhone+15+Pro+Rose+Gold&w=120&h=120&c=1&rs=1&qlt=90&cb=1&dpr=1.5&pid=InlineBlock&mkt=en-IN&cc=IN&setlang=en&adlt=moderate&t=1&mw=247 ",
    },

    {
      "title" : "iPhone 15 Pro Max",
      "price" : " 100000",
      "images" : "https://th.bing.com/th/id/OIP.1F-9GkfrBui4yMLlMoXKmAHaHa?w=208&h=208&c=7&r=0&o=5&dpr=1.5&pid=1.7 ",
    },

    {
      "title" : "iPhone 14",
      "price" : " 100000",
      "images" : "https://th.bing.com/th?q=iPhone+14+Pro+Blue&w=120&h=120&c=1&rs=1&qlt=90&cb=1&dpr=1.5&pid=InlineBlock&mkt=en-IN&cc=IN&setlang=en&adlt=moderate&t=1&mw=247 ",
    },

    {
      "title" : "iPhone 14 Pro Max",
      "price" : " 100000",
      "images" : "https://th.bing.com/th/id/OIP.eVHvVU7_ZM8_WbpBANyBFQAAAA?w=193&h=193&c=7&r=0&o=5&dpr=1.5&pid=1.7 ",
    },

    {
      "title" : "iPhone 13",
      "price" : " 100000",
      "images" : "https://th.bing.com/th/id/OIP.Ga89olgNEGV-86b623a_nQAAAA?w=177&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7 ",
    },

    {
      "title" : "iPhone 13 Pro Max",
      "price" : " 100000",
      "images" : "https://th.bing.com/th/id/OIP.W9I4SNi5PuiGww9Mf0NEswHaHa?w=181&h=181&c=7&r=0&o=5&dpr=1.5&pid=1.7 ",
    },


  ];
  @override
  Widget build(BuildContext context) {
   
   return Scaffold(
    resizeToAvoidBottomInset: false,

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
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.blue),
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
      ),
     ),

     SizedBox(height: 20,),

     Flexible(child: GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisExtent: 300), 
      itemCount: inner_items.length,
      
      itemBuilder: (context,index){

      return Container(
        
        margin: EdgeInsets.all(10),
        width: 200,
        height: 600,
        decoration: BoxDecoration(border: Border.all(color: Colors.blue),
          borderRadius: BorderRadius.circular(10),color: Colors.blue[100]),
        

        child:Column(children: [

          ClipRRect(

            child: Image.network('${inner_items.elementAt(index)['images']}',scale: 1,),
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10),topLeft: Radius.circular(10),topRight: Radius.circular(10)),
          ),

          SizedBox(height: 10,),

         // Text('Price : ${inner_items.elementAt(index)['title']}',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),

         Row(
          children: [

            Padding(padding: EdgeInsets.only(left:10),child:Text('Model :  ',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.black)),),
            Text('${inner_items.elementAt(index)['title']}',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.blue),)
          ],
         ),

         SizedBox(height: 10,),


          Row(
          children: [

            Padding(padding: EdgeInsets.only(left:10),child:Text('Price  :  ',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.black)),),
            Text(' \$ ${inner_items.elementAt(index)['price']}',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.blue),)
          ],
         ),
         SizedBox(height: 10,),

          Row(
          children: [

            Padding(padding: EdgeInsets.only(left:10),child:Text('Rating:  ',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.black)),),
            Text('★★★★☆',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.blue),)
          ],
         ),

         


        ],)
      );
     })
     
     )
        
   ]));
  }

}