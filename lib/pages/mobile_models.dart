import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


/*class choosing_mobile_models extends StatelessWidget{

  final List<String> inner_items =  ['APPLE','RED MI', 'POCO' , 'SAMSUNG' , 'OPPO' , 'VIVO'  ];
  @override
  Widget build(BuildContext context) {
    

    return Scaffold(

      body:Column(children:[

      SizedBox(height: 70,),
      

    Container(child:Flexible(child: GridView.builder(
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
        
   ), 

  
   ]))
    ;
  }


} */