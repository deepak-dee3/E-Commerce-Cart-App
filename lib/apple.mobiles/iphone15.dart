
import 'package:flutter/material.dart';

class iphone_15 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.blue[200],

      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:Column(children: [

        SizedBox(height: 50,),

        Center(child:Container(

          width: 300,
          height: 300,
         decoration: BoxDecoration(borderRadius: BorderRadius.circular(40),boxShadow: [

          BoxShadow(
            color:Colors.blue,
            blurRadius: 16,
            spreadRadius: 1,
          )
         ],
         
          color: Colors.grey,
         /*boxShadow: [
          BoxShadow(
            color: Colors.blue,
            blurRadius: 10,spreadRadius: 1,
          )
         ]*/
         ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Image.network('https://th.bing.com/th?q=iPhone+15+Pro+Rose+Gold&w=120&h=120&c=1&rs=1&qlt=90&cb=1&dpr=1.5&pid=InlineBlock&mkt=en-IN&cc=IN&setlang=en&adlt=moderate&t=1&mw=247',fit: BoxFit.fill,),
          ),



        )),

        SizedBox(height: 20,),

        Align(
          alignment: Alignment.centerLeft,
          child:Text('   Apple iPhone 15',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold))),

           SizedBox(height: 10,),


        Padding(padding:EdgeInsets.all(20),child:Text('DYNAMIC ISLAND COMES TO IPHONE 15 — Dynamic Island bubbles up alerts and Live Activities — so you don’t miss them while you’re doing something else. You can see who’s calling, track your next ride, check your flight status, and so much more.'),),

        Padding(padding:EdgeInsets.all(20),child:Text('INNOVATIVE DESIGN — iPhone 15 features a durable color-infused glass and aluminum design. It’s splash, water, and dust resistant. The Ceramic Shield front is tougher than any smartphone glass. And the 6.1" Super Retina XDR display is up to 2x brighter in the sun compared to iPhone 14.'),),
        Padding(padding:EdgeInsets.all(20),child:Text('48MP MAIN CAMERA WITH 2X TELEPHOTO — The 48MP Main camera shoots in super-high resolution. So it’s easier than ever to take standout photos with amazing detail. The 2x optical-quality Telephoto lets you frame the perfect close-up.'),),
        //Padding(padding:EdgeInsets.all(20),child:Text('POWERHOUSE A16 BIONIC CHIP — The superfast chip powers advanced features like computational photography, fluid Dynamic Island transitions, and Voice Isolation for phone calls. And A16 Bionic is incredibly efficient to help deliver great all-day battery life.'),),

        SizedBox(height: 10,),

        Align(
          alignment: Alignment.centerLeft,
          child:Text('   Available Colours  :',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black))),
          SizedBox(height: 20,),


        Row(
          children: [

           Padding( padding: EdgeInsets.only(left:30),child:Container(width: 50,height: 50,decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.black,border: Border.all(color:Colors.black)),)),

           Padding( padding: EdgeInsets.only(left:20),child:Container(width: 50,height: 50,decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.grey[100],border: Border.all(color:Colors.grey)),)),
           Padding( padding: EdgeInsets.only(left:20),child:Container(width: 50,height: 50,decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.green[100],border: Border.all(color:Colors.green)),)),
           Padding( padding: EdgeInsets.only(left:20),child:Container(width: 50,height: 50,decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.yellow[100],border: Border.all(color:Colors.yellow)),)),
           Padding( padding: EdgeInsets.only(left:20),child:Container(width: 50,height: 50,decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.pink[100],border: Border.all(color:Colors.pink)),)),

          ],
        ),

        SizedBox(height: 20,),

         Align(
          alignment: Alignment.centerLeft,
          child:Text('   Services  : ',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold))),
          SizedBox(height: 20,),

         /* Row(

            children: [

              Padding(padding: EdgeInsets.only(left:30),child:Container(

                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.blue),
              
                child: Icon(Icons.recycling,size: 50,),
              )),

             /* Padding(padding: EdgeInsets.only(left:80),child:Container(

                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.blue),
              
                child: Icon(Icons.delivery_dining,size: 50,),
              )),

              Padding(padding: EdgeInsets.only(left:80),child:Container(

                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.blue),
              
                child: Icon(Icons.security,size: 50,),
              )), */

            ],
          ),

          SizedBox(height: 20,), */

        /*  Row(children: [

            Padding(padding: EdgeInsets.only(left:20),child:Container(

              
                child: Text('(Replace with in 7 days)',style: TextStyle(fontWeight: FontWeight.bold),),),
              ),
          ],)

          */
          SizedBox(height: 40,),

          Center(
            child:Icon(Icons.recycling,size: 100,),
          ),

          SizedBox(height: 20,),

          Align(
          alignment: Alignment.centerLeft,
          child:Text('                   (Replace with in 7 days)',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold))),
          SizedBox(height: 50,),


          Center(
            child:Icon(Icons.delivery_dining,size: 100,),
          ),

          SizedBox(height: 20,),

          Align(
          alignment: Alignment.centerLeft,
          child:Text('                   (Delivery in 2 or 3 days)',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold))),
          

           SizedBox(height: 50,),


          Center(
            child:Icon(Icons.security,size: 100,),
          ),

          SizedBox(height: 20,),

          Align(
          alignment: Alignment.centerLeft,
          child:Text('                   (Warranty for 1 year)',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold))),
          SizedBox(height: 20,),





          







      ],)
    ));
  }
  
}