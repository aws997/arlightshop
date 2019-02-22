import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'itemdetails.dart';
import 'items.dart';
void main() => runApp(MyApp());

BuildContext mcontext;

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home:Home(

    ),debugShowCheckedModeBanner: false,
    );
  }
}

  class Home extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
mcontext=context;

      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light
      .copyWith(statusBarColor: Colors.transparent));
      return Scaffold(
        drawer: Drawer(

          child:ListView(children:<Widget>[
              UserAccountsDrawerHeader(accountName: Text("Aws Basim"),
              accountEmail: Text("aws.basim@gmail.com"),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person,color: Colors.white,),
                  
                ),
              ),
              decoration: BoxDecoration(
               color: Colors.grey[300]
              ),
              ),
              InkWell(onTap: (){},child: 
              ListTile(
                leading: Icon(Icons.home),title: Text("Homepage"),
              ),
              ),
              InkWell(onTap: (){},child: 
              ListTile(
                leading: Icon(Icons.search),title: Text("Search"),
              ),
              ),
              InkWell(onTap: (){},child: 
              ListTile(
                leading: Icon(Icons.settings),title: Text("Settings"),
              ),
              ),

    ],
    
  ),  
   
            

        ),
        appBar: PreferredSize( child: DR(),preferredSize: Size.fromHeight(40),),
        backgroundColor: Colors.grey[100],
        body: ListView( shrinkWrap: true,
                  children:<Widget>[ 
                    Row(children: <Widget>[
                      Expanded(child: 
                      Container(margin: EdgeInsets.all(15), height: 1.7,color: Colors.grey[300],)),
                      Text("Categories",style: TextStyle(color: Colors.grey),),
                        Expanded(child: 
                      Container(margin: EdgeInsets.all(15), height: 1.7,color: Colors.grey[300],)),
                    ],),
                    GridView.count(shrinkWrap: true,padding: EdgeInsets.all(15),crossAxisCount:2 ,physics: ScrollPhysics(),crossAxisSpacing:20,mainAxisSpacing: 20
            
          
            ,children: <Widget>[
              gridTile("Table Lamps", "assets/lamp.png",0.3),
               gridTile("Ceiling Lamps", "assets/lamp2.png",0),
                              gridTile("Sconces ", "assets/lamp3.png",0),

               gridTile("Floor Lamps", "assets/lamp4.png",0),

               gridTile("Light Decorations", "assets/lamp6.png",0),

               gridTile("Garlands", "assets/lamp5.png",0),

            

               


          
    
],),SizedBox(height: 20,), Row(children: <Widget>[Container(width: 150,height: 35,padding: EdgeInsets.symmetric(vertical: 8),
   decoration: BoxDecoration(color: Color(0xffBA9EB7),borderRadius: BorderRadius.circular(25)),
   child: Row(mainAxisAlignment: MainAxisAlignment.center, children:<Widget>[ Image.asset('assets/cube.png',color: Colors.white,),Text("  View",textAlign: TextAlign.center,style: TextStyle(color: Colors.white),)]
   ),
),

]
   ,mainAxisAlignment: MainAxisAlignment.center,),SizedBox(height: 20,)]
        ),
      );
    }

    Widget gridTile(String name,String pic,double ali)
    {
      return InkWell(onTap: (){
        Navigator.of(mcontext).push(MaterialPageRoute(
          builder: (context){
            return Items();
          }
        )
        );
      },
              child: GridTile(footer: Padding(
  padding: const EdgeInsets.all(15.0),
  child:   Text(name,style: 
  
  TextStyle(height: 3
  
    
  
  ),textAlign: TextAlign.center,),
),
  child:   Material(borderRadius: BorderRadius.circular(10),
  
  color: Colors.white,elevation:8,shadowColor: Colors.black.withOpacity(0.2),
  
  child: Container( padding: EdgeInsets.only(bottom: 40,top: 20),child: 
            Image.asset(pic,alignment: Alignment(ali, 0),)),),
),
      );
    }
  }

class DR extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  AppBar(centerTitle: true,actions: <Widget>[//Material(
    //   elevation:8,shadowColor: Colors.black.withOpacity(0.2),borderRadius: BorderRadius.horizontal(left: Radius.circular(30),),
    // child:
    IconButton(icon:Icon(IconData(0xe905,fontFamily:'ico' ),size: 20,color: Colors.black,),onPressed: (){},padding: EdgeInsets.only(right: 15),)
    // color: Colors.black, )
    ],
        backgroundColor: Colors.transparent,brightness: Brightness.light,
      elevation: 0,leading: IconButton(onPressed: (){Scaffold.of(context).openDrawer();},
              icon: Icon(IconData(0xe901,fontFamily:'ico' ),size: 20,
        color: Color(0xffBA9EB7),),
      ),
      title: Text("LightAR",style: 
      TextStyle(fontWeight: FontWeight.bold,
      color: Colors.black),),);
  }
}