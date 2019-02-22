import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ItemDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light
     // .copyWith(statusBarColor: Colors.transparent,statusBarIconBrightness: Brightness.dark));
     SystemChrome.setEnabledSystemUIOverlays([]);
    return Scaffold(
          body: Stack(children: <Widget>[
        Container(height:360 ,decoration: 
          BoxDecoration( 
            image: DecorationImage(image: 
            AssetImage('assets/temp.png',),fit: BoxFit.fitHeight,alignment: Alignment.topRight)
          ),),
         Column(crossAxisAlignment: CrossAxisAlignment.start,
           children: <Widget>[SizedBox(height: 50,),
           Row(children:<Widget>[ 
             IconButton(icon:Icon( Icons.keyboard_backspace,color: Colors.black,),onPressed: (){

              
        Navigator.of(context).pop(
        );
      
             },),
             Text('Back',style: TextStyle(color: Colors.grey),)
           ]
           ),
           SizedBox(height: 150,),
            Padding(
              padding: const EdgeInsets.only(left:15.0),
              child: Text('LittMcMann',style: TextStyle(fontWeight: FontWeight.bold
              ,color: Colors.black,
              fontSize: 11),),
            ),
             Padding(
              padding: const EdgeInsets.only(left:15.0),
              child: Text('Theo II',style: TextStyle(fontWeight: FontWeight.bold
              ,color: Colors.black,
              fontSize: 24),),
            ),
              Padding(
              padding: const EdgeInsets.only(left:15.0),
              child: Text('Table Lamp',style: TextStyle(fontWeight: FontWeight.bold
              ,color: Colors.grey[350],
              fontSize: 12),),

            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 15,top: 20),
                  child: Icon(IconData(0xe90a,fontFamily: 'ico'),color: Colors.grey[400],size: 18 ,),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Text(" 27\" x 12\" ",style: TextStyle(height: 1,color: Colors.grey[350],
                  fontSize: 12)),
                )],
              ),

               Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 15,top: 10),
                  child: Icon(IconData(0xe909,fontFamily: 'ico'),color: Colors.grey[400],size: 18),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Text(" black",style: TextStyle(height: 1,color: Colors.grey[350],
                  fontSize: 12)),
                )],
              ),

                Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 15,top: 10),
                  child: Icon(IconData(0xe908,fontFamily: 'ico'),color: Colors.grey[400],size: 15,),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Text("  darck marble",style: TextStyle(height: 1,color: Colors.grey[350],
                  fontSize: 12)),
                )],
              ),
         ],),
         Align(
           alignment: Alignment.centerRight,child: Column(crossAxisAlignment: CrossAxisAlignment.end,
           children: <Widget>[SizedBox(height: 330,),
              Row(mainAxisAlignment: MainAxisAlignment.end,
               children:<Widget>[ 
                 Image.asset('assets/cube.png',color:  Color(0xffBA9EB7),width: 21,),
                 Padding(
                   padding: const EdgeInsets.only(right:23),
                   child: Text("  AR View",textAlign: TextAlign.center,style: TextStyle(color:  Color(0xffBA9EB7)),),
                 )
               ]
              ),
              Padding(
                padding: const EdgeInsets.only(right: 22,top: 33),
                child: Text("\$124,00",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17
                ),),
              ),
          Align(
    alignment: Alignment.bottomCenter,
    child: Container(
      child: Padding(
        padding: const EdgeInsets.only(left:15,top: 20,right: 25),
        child: Text("LittMcMann Theo II is a classic model of table lamp, which will fit any chic and elegant interior created by award winning duo of LittMcMann brothers, "
        +" model Theo II has won many international Interior Decor awards"+
        ", including Best Designed Lamp Of The Year 2018 in Paris.\n \nWarranty is covered for 5 years with kept receipt."
        ,style:TextStyle(color: Colors.grey[400],fontSize: 13) ,),
      
      ),
    ),

  ),
  Center(
    child: Padding(
      padding: const EdgeInsets.only(left: 20,right: 20,top: 30),
      child: Container(width: double.infinity,height: 35,padding: EdgeInsets.symmetric(vertical: 8),
       decoration: BoxDecoration(color: Color(0xffBA9EB7),borderRadius: BorderRadius.circular(25)),
       child: Row(
         mainAxisAlignment: MainAxisAlignment.center, 
         children:<Widget>[
           // Image.asset('assets/cube.png',color: Colors.white,),
            Text("ADD TO ",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),),
            Icon(IconData(0xe905,fontFamily: 'ico'),
            size: 15,color: Colors.white,)
            ]
       ),
),
    ),
  ), ],
         ),
         ),
  
  ],
        
      ),
    );
  }
}