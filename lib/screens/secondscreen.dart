//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:project_flutter/authentication.dart';
import 'package:project_flutter/model/user.dart';
import 'package:project_flutter/routing_constants.dart';
import 'package:project_flutter/theme_helper.dart';
import 'package:project_flutter/utils/database_helper.dart';


class SecondScreen extends StatefulWidget {
  //User u=new User();
  //final String_message =ModalRoute.of(context)!.settings.arguments;
  //SecondScreen({Key? key,  required String userName,required this.user,}) : super(key: key);
  final User user;
  String userName;
  SecondScreen(  
   
    { Key? key, required this.userName,required this.user}    
    
    ):super(key: key);
  late DatabaseHelper db;
  
  
  

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
   
    @override
   Widget build(BuildContext context) {
    bool res;
    return Material(
      
    child:
   
    Column(children: [
       SizedBox(height: 50,) ,
       Container(
         width: 155,
         height:55,
          decoration: ThemeHelper().buttonBoxDecoration(context),
      //child://Align(
        //alignment: Alignment.topRight,
        margin: EdgeInsets.only(left:210, top:10,right:0),
        
        child: ElevatedButton(
                                style: ThemeHelper().buttonStyle(),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                                  child: Text('Log Out'.toUpperCase(), style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),),
                                ),
                                onPressed:() {
                                  Navigator.pushNamed(context,LoginViewRoute);
                                }
        ,
      )
       //) ,
      
    ),
      Container(
      //margin: EdgeInsets.only(left:20.0, top:10,right:90),
      child:Row(
        children: [
           Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.all(50),
            child: CircleAvatar(
              //border
              radius: 65,
              backgroundColor: Colors.brown,
              child: ClipRRect(
        child: Image.asset('assets/images/profile1.jpg'),
        borderRadius: BorderRadius.circular(50.0),
    ),
            ),
          ),
           ),
           
           Column(children: [
             
             new Text(widget.userName,style:const TextStyle(fontSize: 28, color: Colors.black) ,),
          new Text("India",style:TextStyle(fontSize: 22, color: Colors.black)),
           ],),
           
                      
        ],
        
      ),
    ),
     
    //SizedBox( height:0),
    Container(
      
    //margin: EdgeInsets.only(left:30.0, top:20,right:90),
     
     child: SingleChildScrollView(
       scrollDirection: Axis.horizontal,
       child: Row(
      // mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: [
          RotatedBox(quarterTurns:3 ,
           child:Text("About",style: TextStyle(fontWeight: FontWeight.bold),)),
           SizedBox(width:10) ,
         //Spacer(flex:1,),
         Container(
         
            height: 100.0,
            width: 100.0,
            color: Colors.transparent,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  
              child:Center(child:new Text("20 Videos",
                style: TextStyle(fontSize: 22, color: Colors.white), 
                  textAlign: TextAlign.center,),
              ),),

              
          ),
          //Spacer(flex:1,),
          
          //Spacer(flex:1,),
          
          //Spacer(flex:1,),
           SizedBox(width:10) ,
          Container(
            height: 100.0,
            width: 100.0,
            
            //color: Colors.transparent,
            child: Container(
              
              decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  
              child:Center(child:new Text("20 Shots",
                style: TextStyle(fontSize: 22, color: Colors.white,), 
                  textAlign: TextAlign.center,),
              ),),
              
          ),
         // Spacer(flex:1,),
         SizedBox(width:10) ,
          Container(
            height: 100.0,
            width: 100.0,
            //color: Colors.transparent,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              child:IconButton(
              icon: Icon(Icons.camera),
              color: Colors.white,
              onPressed: () {
             },
              ),
            ),
              
          ),
          //Spacer(flex:1,),
          SizedBox(width:10) ,
          Container(
            height: 100.0,
            width: 100.0,
            //color: Colors.transparent,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              child:IconButton(
              icon: Icon(Icons.photo),
              color: Colors.white,
              onPressed: () {
                
              },
              ),
            ),
              
          ),
          //Spacer(flex:1,),
          SizedBox(width:10) ,
          Container(
            height: 100.0,
            width: 100.0,
            //color: Colors.transparent,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              child:IconButton(
              icon: Icon(Icons.camera),
              color: Colors.white,
              onPressed: () {
                
              },
              ),
            ),
              
          ),
          //Spacer(flex:1,),
          SizedBox(width:10) ,
          Container(
            height: 100.0,
            width: 100.0,
            //color: Colors.transparent,
            child: Container(
              decoration: BoxDecoration(
              color: Colors.lightBlue,
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
              child:IconButton(
              icon: Icon(Icons.video_camera_front),
              color: Colors.white,
              onPressed: () {
                },
              )
            ),
          ),
          //Spacer(flex:1,),
          SizedBox(width:10) ,
              Container(
            height: 100.0,
            width: 100.0,
            //color: Colors.transparent,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              child:IconButton(
              icon: Icon(Icons.message),
              color: Colors.white,
              onPressed: () {
                
              },
              )
            ),
              ),
         ],),
     ),
      ),
      
      SizedBox( height:10),
     SingleChildScrollView(
       scrollDirection: Axis.horizontal,
     //margin: EdgeInsets.only(left:30.0,top:15,right:90),
      child:Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      
       children: [
         RotatedBox(quarterTurns:3 ,
         child:Text(" Projects",style: TextStyle(fontWeight: FontWeight.bold),)),
         //Spacer(flex:1,),
         SizedBox(width:10) ,
        Container(
          height: 100.0,
          width: 200.0,
          //color: Colors.transparent,
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.greenAccent, Colors.lime]),
                
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            child:Center(child: new Text("GIFs",
              style: TextStyle(fontSize: 22, color: Colors.white), 
                textAlign: TextAlign.center,),),
            )
        ),
         //Spacer(flex:1,),
         SizedBox(width:10) ,
        Container(
          height: 100.0,
          width: 200.0,
          //color: Colors.transparent,
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.purpleAccent, Colors.pinkAccent]),
                
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            child: Center(child:new Text("Interfaces",
              style: TextStyle(fontSize: 22, color: Colors.white), 
                textAlign: TextAlign.center,),),
            
          )
        ),
        SizedBox(width:10) ,
        Container(
          height: 100.0,
          width: 200.0,
          //color: Colors.transparent,
          child: Container(
            decoration: BoxDecoration(
               gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.limeAccent, Colors.orange]),
                
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            child: Center(child: new Text("Connect",
              style: TextStyle(fontSize: 22, color: Colors.white), 
                textAlign: TextAlign.center,),),
          )
        ),
        SizedBox(width:10) ,
        Container(
          height: 100.0,
          width: 200.0,
         // color: Colors.transparent,
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.blueAccent, Colors.pinkAccent]),
                
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            child:Center(child: new Text("Graphics",
              style: TextStyle(fontSize: 22, color: Colors.white), 
                textAlign: TextAlign.center,),),
            )
        ),
            
       ],),
     ),
     SizedBox(height: 20,),
     SingleChildScrollView(
       scrollDirection: Axis.horizontal,
       //margin: EdgeInsets.only(left:0.0, top:20,right:90),
       child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
           RotatedBox(quarterTurns:3 ,
         child:Text("Spots",style: TextStyle(fontWeight: FontWeight.bold),)),
          //Spacer(flex:1,),
          SizedBox(width:10) ,
           Container(
          height: 200.0,
          width: 150.0,
          //color: Colors.transparent,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.grey,
                
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            child: Image.asset('assets/images/london.jpg',fit: BoxFit.cover,)
            
            ),
            
        ),
        SizedBox(width:10) ,
       // Spacer(flex:1,),
        Container(
          height: 200.0,
          width: 150.0,
         // color: Colors.transparent,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.grey,
                
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            child: Image.asset('assets/images/spring.jpg',fit: BoxFit.cover,)
            ),
            
        ),
        //Spacer(flex:1,),
        SizedBox(width:10),
        
        Container(
          height: 200.0,
          width: 150.0,
         // color: Colors.transparent,
          
          child: Container(
            decoration: BoxDecoration(
                //color: Colors.grey,
               borderRadius: BorderRadius.all(Radius.circular(10.0))),
                
            child:Image.asset('assets/images/snowfall.jpg',fit: BoxFit.cover,)
            ),
            
        ),
        SizedBox(width:10) ,
               //Spacer(flex:1,),
        Container(
          height: 200.0,
          width: 150.0,
          //color: Colors.transparent,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.grey,
                
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            child:Image.asset('assets/images/river.jpeg',fit: BoxFit.fill,)
            ),
            
        ),
        SizedBox(width:10) ,
        //Spacer(flex:1,),
        Container(
          height: 200.0,
          width: 150.0,
          //color: Colors.transparent,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.grey,
                
               borderRadius: BorderRadius.all(Radius.circular(10.0))),
            child:Image.asset('assets/images/sky.jpg',fit: BoxFit.fill,)
            ),
            
        ),
        SizedBox(width:10) ,
         Container(
          height: 200.0,
          width: 150.0,
         // color: Colors.transparent,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.grey,
                
               borderRadius: BorderRadius.all(Radius.circular(10.0))),
            child:Image.asset('assets/images/scenery.jpg',fit: BoxFit.fill,)
            ),
            
        ),

         ],
         

       ) ,
     )
    ],
     ) 
      

 );
  
  

}

}
