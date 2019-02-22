import 'package:flutter/material.dart';
import 'itemdetails.dart';
BuildContext mcontext;

class Items extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    mcontext=context;
    return  Material(
          child: Container(color: Colors.grey[300],
        child: Stack(children: <Widget>[
          Container(
            alignment: Alignment.topCenter,
            width: double.infinity,
            height: 460,
            decoration: BoxDecoration(
              color: Colors.grey[350],
              image: DecorationImage(
                image: AssetImage("assets/lampitem1.jpg",),
                fit: BoxFit.fitHeight,
                alignment: Alignment.topCenter,
                
              )
            ),
          ),

               
             Positioned(left: 10,top: 20,child:  Row(mainAxisAlignment: MainAxisAlignment.start,
               children:<Widget>[ 
             IconButton(icon:Icon( Icons.keyboard_backspace,color: Colors.black,),onPressed: (){

              
        Navigator.of(context).pop(
        );
      
             },),
             Text('Back',style: TextStyle(color: Colors.grey),)
           ]
           ),),
          Positioned(left: 0,right: 0,height: 210,bottom: 35,
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 15),
              scrollDirection: Axis.horizontal,
                      children:<Widget>[
                 
                   listItem(),
                   listItem(),
                 
                   
                 
                   ]
            ),
          )
        ],
          
        ),
      ),
    );
  }

  Widget listItem()
  {

       
           return    Padding(
                         padding: EdgeInsets.symmetric(horizontal: 5),
                         child: Material(
               borderRadius: BorderRadius.circular(30),
               elevation:8,shadowColor: Colors.black.withOpacity(0.2),
               child: Container( padding: EdgeInsets.all(23),
                 decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(30),
               ),
                 width:300,
                 height: 100,
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("LittMcMann",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 10
                      ),),

                      Text("Theo II",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                      ),),

                      Text("Table Lamp",style: TextStyle(
                       color: Colors.grey,
                        fontSize: 12
                      ),)
                    ],
                  ),
                  Container(
width: 60,
height: 60,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/lampitempic.png"),
                        fit: BoxFit.cover
                      )
                    ),
                  )
                ],),
Container(padding: EdgeInsets.symmetric(vertical: 5),
  child:  Text("LittMcMann Theo II is a classic model of a table lamp,"
  +" wich will fit any chic and elegant iterior.",style: TextStyle(
                       color: Colors.grey,
                        fontSize: 12
                      ),),
),
//SizedBox(height: 15,),
Row(crossAxisAlignment: CrossAxisAlignment.start,
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: <Widget>[
   Padding(
     padding: const EdgeInsets.only(top: 15),
     child: Text("\$92,00",style: TextStyle(
                        fontWeight: FontWeight.bold,
                          fontSize: 19
                        ),),
   ),
RawMaterialButton(
  elevation: 1,
  onPressed: (){

     Navigator.of(mcontext).push(MaterialPageRoute(
          builder: (context){
            return ItemDetails();
          }));
  },
  fillColor:    Color(0xffBA9EB7),
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
   child: Text("DETAILS",style: TextStyle(
                       color: Colors.white,
                          fontSize:12
                      ),),
)
                  
],)
              ],
            ),
                 
               ),
            
                 ),
                       );
  }
}