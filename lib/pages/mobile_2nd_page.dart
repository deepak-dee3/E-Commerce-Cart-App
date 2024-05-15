import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class mobile_2nd_page extends StatefulWidget{
  @override
  State<mobile_2nd_page> createState() => _mobile_2nd_pageState();
}

class _mobile_2nd_pageState extends State<mobile_2nd_page> {


  final List<String> iitems = ["APPLE","ONE PLUS","RED MI","OPPO","VIVO","REAL ME"];

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

  void _apple()
  {

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
        
   );

    
  }

  int current_index = 0;
  @override
  Widget build(BuildContext context) {
  

    return Scaffold(
      appBar: AppBar(
        title: Text('abc'),
      ),

      body:Container(

        width: double.infinity,
        height: double.infinity,

        child:Column(children: [

          SizedBox(
            height:40
          ),

          SizedBox(
            height:60 ,
            width: double.infinity,

            child:ListView.builder(scrollDirection: Axis.horizontal,

            physics:PageScrollPhysics(),
            
            itemCount: items.length,
              itemBuilder: (context,index)
            {
              return Column(

                children: [

                
                GestureDetector(
                  
                  onTap: (){



                  setState(() {
                    current_index = index ;
                  });

                  
                },
                  child:AnimatedContainer(

                    height: 50,

                    duration: Duration(milliseconds: 3),

               
                margin: EdgeInsets.all(5),
                width: 180,
                
                decoration: BoxDecoration(

                  color: current_index == index ? Colors.blue : Colors.grey,

                  borderRadius: current_index == index ? BorderRadius.circular(5) : BorderRadius.circular(5),

                  border: current_index == index ? Border.all(color: Colors.black) : Border.all(color: Colors.black)
                ),
                child:Center(
                child: Text('${items[index]}',style:TextStyle(

                  fontWeight: current_index == index ? FontWeight.bold : FontWeight.bold,

                  color: current_index == index ? Colors.black : Colors.grey[900],

                )),
              ))),

              //Visibility(child: child)

              
              
                 
              
              
              
              ]);

            })
          ),

          

          SizedBox(height: 30,),


              /*Container(
                  width: 330,
                  height: 500,

                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.amber),
                )*/

      /*    Container(child:Flexible(child: GridView.builder(
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
        
   ),*/

          


        ],)
      )



      

    );
  }
}