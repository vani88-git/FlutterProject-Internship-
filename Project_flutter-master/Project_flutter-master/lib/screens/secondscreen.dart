import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
    return Material(
      
    child: 
    Column(children: [
      Container(
      margin: EdgeInsets.only(left:20.0, top:10,right:90),
      child:Row(
        children: [
           Align(
          alignment: Alignment.topCenter,
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
             new Text("Vidya",style:TextStyle(fontSize: 28, color: Colors.black) ,),
          new Text("India",style:TextStyle(fontSize: 22, color: Colors.black)),
           ],)
          
        ],
      ),
    ),
    //SizedBox( height:0),
    Container(
    margin: EdgeInsets.only(left:30.0, top:20,right:90),
     child: Row(
     mainAxisAlignment: MainAxisAlignment.spaceAround,
       children: [
        RotatedBox(quarterTurns:3 ,
         child:Text("About")),
          
       //Spacer(flex:1,),
       Container(
          height: 100.0,
          width: 100.0,
          color: Colors.transparent,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.lightBlue,
                
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            child:Center(child:new Text("27k Followers",
              style: TextStyle(fontSize: 22, color: Colors.white), 
                textAlign: TextAlign.center,),
            ),),

            
        ),
        //Spacer(flex:1,),
        
        //Spacer(flex:1,),
        
        //Spacer(flex:1,),
        Container(
          height: 100.0,
          width: 100.0,
          color: Colors.transparent,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.lightBlue,
                
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            child:Center(child: new Text("27 shots",
              style: TextStyle(fontSize: 22, color: Colors.white), 
                textAlign: TextAlign.center,),
            ),),
            
        ),
       // Spacer(flex:1,),
        Container(
          height: 100.0,
          width: 100.0,
          color: Colors.transparent,
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
        Container(
          height: 100.0,
          width: 100.0,
          color: Colors.transparent,
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
        Container(
          height: 100.0,
          width: 100.0,
          color: Colors.transparent,
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
            Container(
          height: 100.0,
          width: 100.0,
          color: Colors.transparent,
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
      
      SizedBox( height:10),
     Container(
     //margin: EdgeInsets.only(left:30.0,top:15,right:90),
      child:Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      
       children: [
         RotatedBox(quarterTurns:3 ,
         child:Text(" Projects")),
         //Spacer(flex:1,),
        Container(
          height: 100.0,
          width: 200.0,
          color: Colors.transparent,
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
        Container(
          height: 100.0,
          width: 200.0,
          color: Colors.transparent,
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
        Container(
          height: 100.0,
          width: 200.0,
          color: Colors.transparent,
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

        Container(
          height: 100.0,
          width: 200.0,
          color: Colors.transparent,
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
     Container(
       margin: EdgeInsets.only(left:0.0, top:20,right:90),
       child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
           RotatedBox(quarterTurns:3 ,
         child:Text("Spots")),
          //Spacer(flex:1,),
           Container(
          height: 200.0,
          width: 150.0,
          color: Colors.transparent,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.grey,
                
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            child: Image.asset('assets/images/snowfall.jpg',fit: BoxFit.cover,)
            ),
            
        ),
       // Spacer(flex:1,),
        Container(
          height: 200.0,
          width: 150.0,
          color: Colors.transparent,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.grey,
                
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            child: Image.asset('assets/images/waterfall.jpeg',fit: BoxFit.cover,)
            ),
            
        ),
        //Spacer(flex:1,),
        Container(
          height: 200.0,
          width: 150.0,
          color: Colors.transparent,
          
          child: Container(
            decoration: BoxDecoration(
                //color: Colors.grey,
               borderRadius: BorderRadius.all(Radius.circular(10.0))),
                
            child:Image.asset('assets/images/monuments.jpg',fit: BoxFit.cover,)
            ),
            
        ),
               //Spacer(flex:1,),
        Container(
          height: 200.0,
          width: 150.0,
          color: Colors.transparent,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.grey,
                
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            child:Image.asset('assets/images/water.jpeg',fit: BoxFit.fill,)
            ),
            
        ),
        //Spacer(flex:1,),
        Container(
          height: 200.0,
          width: 150.0,
          color: Colors.transparent,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.grey,
                
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            child:Image.asset('assets/images/Mountains.jpg',fit: BoxFit.fill,)
            ),
            
        ),
         Container(
          height: 200.0,
          width: 150.0,
          color: Colors.transparent,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.grey,
                
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            child:Image.asset('assets/images/tulips.jpg',fit: BoxFit.fill,)
            ),
            
        )
         ],

       ) ,
     )
    ],
     ) 
     

 );
    
    

}
 }
