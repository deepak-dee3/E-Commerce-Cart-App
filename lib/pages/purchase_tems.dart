import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class purchase_items extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(

      appBar: AppBar(
        title: Text('SHOPPING CART'),
        backgroundColor: Colors.blue,

        centerTitle: true,
      ),

      body:

          /* GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            
            mainAxisSpacing: 10,crossAxisSpacing: 5),
           
           children: [
            

            Container(
              margin: EdgeInsets.all(15),
              width: 100,
              height: 150,
              //color: Colors.blue,
              decoration: BoxDecoration(border: Border.all(width: 10,color: Colors.blue),borderRadius: BorderRadius.circular(10),color: Colors.blue),

              child: Stack(
                children: [
                  Image.network('https://th.bing.com/th/id/OIP.MOcfaj0mdHeSJ6VI-G4FJwHaMK?w=120&h=197&c=7&r=0&o=5&dpr=1.5&pid=1.7',fit: BoxFit.cover,)
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              width: 100,
              height: 100,
              //color: Colors.blue,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.blue,),
            )
           ],
           ) */

          /* GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 0),
           scrollDirection: Axis.vertical,

           children: [

            
            /*Container(
              width:50,
              height: 20,
             // margin: EdgeInsets.all(20),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(120),color: Colors.blue,),
            ),
            Container(
              width:50,
              height: 20,
              //margin: EdgeInsets.all(20),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(120),color: Colors.blue,),
            ),
            Container(
              width:50,
              height: 20,
              //margin: EdgeInsets.all(20),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: Colors.blue,),
            ),
            Padding(padding:EdgeInsets.only(left:45),child:Text('data'),),
            Padding(padding:EdgeInsets.only(left:45),child:Text('data'),),
            Padding(padding:EdgeInsets.only(left:45),child:Text('data'),),
            
            Container(
              width:100,
              height: 100,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(120),color: Colors.blue,),
            ),
            Container(
              width:100,
              height: 100,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(120),color: Colors.blue,),
            ),
            Container(
              width:100,
              height: 100,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(120),color: Colors.blue,),
            ),
            Padding(padding:EdgeInsets.only(left:45),child:Text('data'),),
            Padding(padding:EdgeInsets.only(left:45),child:Text('data'),),
            Padding(padding:EdgeInsets.only(left:45),child:Text('data'),),
            Container(
              width:100,
              height: 100,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(120),color: Colors.blue,),
            ),
            Container(
              width:100,
              height: 100,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(120),color: Colors.blue,),
            ),
            Container(
              width:100,
              height: 100,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(120),color: Colors.blue,),
            ),
            Padding(padding:EdgeInsets.only(left:45),child:Text('data'),),
            Padding(padding:EdgeInsets.only(left:45),child:Text('data'),),
            Padding(padding:EdgeInsets.only(left:45),child:Text('data'),),
            Container(
              width:100,
              height: 100,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(120),color: Colors.blue,),
            ),
            Container(
              width:100,
              height: 100,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(120),color: Colors.blue,),
            ),
            Container(
              width:100,
              height: 100,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(120),color: Colors.blue,),
            ),
            Padding(padding:EdgeInsets.only(left:45),child:Text('data'),),
            Padding(padding:EdgeInsets.only(left:45),child:Text('data'),),
            Padding(padding:EdgeInsets.only(left:45),child:Text('data'),),

            */



            
           ],
           
           
           
           ) */
           SingleChildScrollView(scrollDirection: Axis.vertical,
           child:Container(
            
            

            color: Colors.blue.withOpacity(0.3),

            child:Column(
            
              children: [

                

                SizedBox(height: 20,),


                Row(
                  children: [


                Padding(padding:EdgeInsets.only(top:30,left: 35),child:CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.black,
                  //foregroundColor: Colors.red,
                  backgroundImage: NetworkImage('https://th.bing.com/th?q=Phone+Product+Images&w=120&h=120&c=1&rs=1&qlt=90&cb=1&dpr=1.5&pid=Inline',scale: 10),
                  
                ),),

                Padding(padding:EdgeInsets.only(top:30,left: 35),child:CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.black,
                  //foregroundColor: Colors.red,
                  backgroundImage: NetworkImage('https://th.bing.com/th?q=Mini+Notebook+Laptop&w=120&h=120&c=1&rs=1&qlt=90&cb=1&dpr=1.5&pid=InlineBlock&mkt=en-IN&cc=IN&setlang=en&adlt=moderate&t=1&mw=247',scale: 10),
                  
                ),),

                Padding(padding:EdgeInsets.only(top:30,left: 35),child:CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.black,
                  //foregroundColor: Colors.red,
                  backgroundImage: NetworkImage('https://th.bing.com/th/id/OIP.5kiEmFNQQPl-bsiSI7BzywHaHa?w=171&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7',scale: 10),
                  
                ),),   //https://th.bing.com/th/id/OIP.xpYIVZOcFUX2W_ep0wjpogHaFj?w=261&h=197&c=7&r=0&o=5&dpr=1.5&pid=1.7

                  ]
                ),

                Row(children: [

                  Padding(padding:EdgeInsets.only(top:10,left: 35),child:Text('MOBILE',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),),

                  Padding(padding:EdgeInsets.only(top:10,left: 55),child:Text('LAPTOP',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),),

                  Padding(padding:EdgeInsets.only(top:10,left: 35),child:Text('GADGETS',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),),

                  
                ],),

                Row(
                  children: [


                Padding(padding:EdgeInsets.only(top:30,left: 35),child:CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.black,
                  //foregroundColor: Colors.red,
                  backgroundImage: NetworkImage('https://th.bing.com/th/id/OIP.P8hiTckA7SoPG1bsHfEtOAHaHa?w=195&h=195&c=7&r=0&o=5&dpr=1.5&pid=1.7',scale: 10),
                  
                ),),

                Padding(padding:EdgeInsets.only(top:30,left: 35),child:CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.black,
                  //foregroundColor: Colors.red,
                  backgroundImage: NetworkImage('https://th.bing.com/th/id/OIP.MGtL750VDInXVo3lYwzGTwHaHa?w=184&h=183&c=7&r=0&o=5&dpr=1.5&pid=1.7',scale: 10),
                  
                ),),

                Padding(padding:EdgeInsets.only(top:30,left: 35),child:CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.black,
                  //foregroundColor: Colors.red,
                  backgroundImage: NetworkImage('https://th.bing.com/th/id/OIP.yhJ2nqLzBblweC-cnqcBtQHaFb?w=219&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7',scale: 10),
                  
                ),),

                  ]
                ),
                 Row(children: [

                  Padding(padding:EdgeInsets.only(top:10,left: 35),child:Text('FORMALS',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),),

                  Padding(padding:EdgeInsets.only(top:10,left: 35),child:Text('CASUALS',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),),

                  Padding(padding:EdgeInsets.only(top:10,left: 35),child:Text('T SHIRTS',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),),

                  
                ],),

                Row(
                  children: [


                Padding(padding:EdgeInsets.only(top:30,left: 35),child:CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.black,
                  //foregroundColor: Colors.red,
                  backgroundImage: NetworkImage('https://th.bing.com/th?q=Girls+Shirt+Top+Design&w=120&h=120&c=1&rs=1&qlt=90&cb=1&dpr=1.5&pid=InlineBlock&mkt=en-IN&cc=IN&setlang=en&adlt=moderate&t=1&mw=247',scale: 10),
                  
                ),),

                Padding(padding:EdgeInsets.only(top:30,left: 35),child:CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.black,
                  //foregroundColor: Colors.red,
                  backgroundImage: NetworkImage('https://th.bing.com/th/id/OIP.emfG-g-Vg8aZTq800t4cCAAAAA?w=195&h=260&c=7&r=0&o=5&dpr=1.5&pid=1.7',scale: 10),
                  
                ),),

                Padding(padding:EdgeInsets.only(top:30,left: 35),child:CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.black,
                  //foregroundColor: Colors.red,
                  backgroundImage: NetworkImage('https://th.bing.com/th/id/OIP.pkj6E4ZtPGvILN4kvBJGJwHaIp?w=149&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7',scale: 10),
                  
                ),),

                  ]
                ),

                Row(children: [

                  Padding(padding:EdgeInsets.only(top:10,left: 35),child:Text('TOPS',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),),

                  Padding(padding:EdgeInsets.only(top:10,left: 75),child:Text('PANTS',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),),

                  Padding(padding:EdgeInsets.only(top:10,left: 35),child:Text('ACCESSORIES',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),),

                  
                ],),



                Row(
                  children: [


                Padding(padding:EdgeInsets.only(top:30,left: 35),child:CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.black,
                  //foregroundColor: Colors.red,
                  backgroundImage: NetworkImage('https://th.bing.com/th/id/OIP.5uVjaFzJBg7e_bb-zOSTQQHaEK?w=332&h=187&c=7&r=0&o=5&dpr=1.5&pid=1.7',scale: 10),
                  
                ),),

                Padding(padding:EdgeInsets.only(top:30,left: 35),child:CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.black,
                  //foregroundColor: Colors.red,
                  backgroundImage: NetworkImage('https://th.bing.com/th/id/OIP.I5PXL1N2xhubFd3fjkP8LgHaIV?w=163&h=184&c=7&r=0&o=5&dpr=1.5&pid=1.7',scale: 10),
                  
                ),),

                Padding(padding:EdgeInsets.only(top:30,left: 35),child:CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.black,
                  //foregroundColor: Colors.red,
                  backgroundImage: NetworkImage('https://th.bing.com/th/id/OIP.76NVTLFXj8ld50pVn3Y6awHaFV?w=260&h=187&c=7&r=0&o=5&dpr=1.5&pid=1.7',scale: 10),
                  
                ),),

                  ]
                ),

                Row(children: [

                  Padding(padding:EdgeInsets.only(top:10,left: 35),child:Text('SOAP',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),),

                  Padding(padding:EdgeInsets.only(top:10,left: 55),child:Text('FACE WASH',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),),

                  Padding(padding:EdgeInsets.only(top:10,left: 35),child:Text('SHAMPOO',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),),

                  
                ],),

                Row(
                  children: [


                Padding(padding:EdgeInsets.only(top:30,left: 35),child:CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.black,
                  //foregroundColor: Colors.red,
                  backgroundImage: NetworkImage('https://th.bing.com/th/id/OIP.R3ngyAHViStvdm-nZvr8QQHaFj?w=210&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7',scale: 10),
                  
                ),),

                Padding(padding:EdgeInsets.only(top:30,left: 35),child:CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.black,
                  //foregroundColor: Colors.red,
                  backgroundImage: NetworkImage('https://th.bing.com/th/id/OIP.xlX2rUvxoS-SApi24IcgCwHaEK?w=280&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7',scale: 10),
                  
                ),),

                Padding(padding:EdgeInsets.only(top:30,left: 35),child:CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.black,
                  //foregroundColor: Colors.red,
                  backgroundImage: NetworkImage('https://th.bing.com/th/id/OIP.0IhkE3LIUMZwV9ev23yTmgHaFf?w=223&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7',scale: 10),
                  
                ),),

                  ]
                ),

                Row(children: [

                  Padding(padding:EdgeInsets.only(top:10,left: 35),child:Text('FRUITS',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),),

                  Padding(padding:EdgeInsets.only(top:10,left: 35),child:Text('VEGETABLES',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),),

                  Padding(padding:EdgeInsets.only(top:10,left: 35),child:Text('CERALS',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),),

                  
                ],),

                Row(
                  children: [


                Padding(padding:EdgeInsets.only(top:30,left: 35),child:CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.black,
                  //foregroundColor: Colors.red,
                  backgroundImage: NetworkImage('https://th.bing.com/th/id/OIP.5_B649BN9ZcrglL7Usgn_QHaD3?w=265&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7',scale: 10),
                  
                ),),

                Padding(padding:EdgeInsets.only(top:30,left: 35),child:CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.black,
                  //foregroundColor: Colors.red,
                  backgroundImage: NetworkImage('https://th.bing.com/th/id/OIP.cLM3v8mEVmNKeH0sPIaSLgHaLL?w=195&h=295&c=7&r=0&o=5&dpr=1.5&pid=1.7',scale: 10),
                  
                ),),

                Padding(padding:EdgeInsets.only(top:30,left: 35),child:CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.black,
                  //foregroundColor: Colors.red,
                  backgroundImage: NetworkImage('https://th.bing.com/th/id/OIP.kyHwyyzkqNWPh-vPijT2FgHaFJ?w=252&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7',scale: 10),
                  
                ),),

                  ]
                ),

                Row(children: [

                  Padding(padding:EdgeInsets.only(top:10,left: 25),child:Text('DRY FRUITS',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),),

                  Padding(padding:EdgeInsets.only(top:10,left: 35),child:Text('CAKES',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),),

                  Padding(padding:EdgeInsets.only(top:10,left: 35),child:Text('CHOCOLATES',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),),

                  
                ],),

                Row(
                  children: [


                Padding(padding:EdgeInsets.only(top:30,left: 35),child:CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.black,
                  //foregroundColor: Colors.red,
                  backgroundImage: NetworkImage('https://th.bing.com/th/id/OIP.UNXlHq3fHoJkRy9GfE8xuQHaE8?w=285&h=189&c=7&r=0&o=5&dpr=1.5&pid=1.7',scale: 10),
                  
                ),),

                Padding(padding:EdgeInsets.only(top:30,left: 35),child:CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.black,
                  //foregroundColor: Colors.red,
                  backgroundImage: NetworkImage('https://th.bing.com/th/id/OIP.L7xtP8P05XsecCYqlFI74gHaFS?w=262&h=187&c=7&r=0&o=5&dpr=1.5&pid=1.7',scale: 10),
                  
                ),),

                Padding(padding:EdgeInsets.only(top:30,left: 35),child:CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.black,
                  //foregroundColor: Colors.red,
                  backgroundImage: NetworkImage('https://th.bing.com/th/id/OIP.lnKC6-SrLGFe0Jm3zAAorAHaE7?w=303&h=202&c=7&r=0&o=5&dpr=1.5&pid=1.7',scale: 10),
                  
                ),),

                  ]
                ),

                Row(children: [

                  Padding(padding:EdgeInsets.only(top:10,left: 25),child:Text('DETERGENT',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),),

                  Padding(padding:EdgeInsets.only(top:10,left: 25),child:Text('CLEANERS',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),),

                  Padding(padding:EdgeInsets.only(top:10,left: 35),child:Text('BUCKETS',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),),

                  
                ],),









                
              ],
            )
           )


        
          
        
      
    ));
  }

}