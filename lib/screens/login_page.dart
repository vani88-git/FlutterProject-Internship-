import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:project_flutter/routing_constants.dart';
import 'package:project_flutter/widgets/header_widget.dart';
import 'package:project_flutter/theme_helper.dart';
import 'package:project_flutter/model/user.dart';
import 'package:project_flutter/authentication.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:fluttertoast/fluttertoast.dart';  


import 'secondscreen.dart';
class LoginPage extends StatefulWidget{
  const LoginPage({Key? key}): super(key:key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
  double _headerHeight = 250;
  final  _formKey = GlobalKey<FormState>();
  User userL = new User();
  Auth auth = new Auth();
  var _textcontroller=new TextEditingController();
  void showMessage(BuildContext context)
  {
    Scaffold.of(context).showSnackBar(
      SnackBar(content:Text('Login Unsuccessful'))
    );
  }
  

  @override
  Widget build(BuildContext context) {

    String? _pass;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: _headerHeight,
              child: HeaderWidget(_headerHeight, true, Icons.login_rounded), //let's create a common header widget
            ),
            SafeArea(
              child: Container( 
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  margin: EdgeInsets.fromLTRB(20, 10, 20, 10),// This will be the login form
                child: Column(
                  children: [
                    Text(
                      'Socialize',
                      style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Signin into your account',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(height: 30.0),
                    Form(
                      key: _formKey,
                        child: Column(
                          children: [
                            
                            Container(
                              child: TextFormField(
                                controller:_textcontroller,
                                decoration: ThemeHelper().textInputDecoration('User Name', 'Enter your user name'),
                                validator: (value){
                                  if(value!.isEmpty)
                                  {
                                    return "Please enter Username";

                                  }
                                  else
                                      return null;
                                },
                                onSaved: (value){
                                  userL.userName=value!;
                                }
                              ),
                              decoration: ThemeHelper().inputBoxDecorationShaddow(),
                            ),
                            SizedBox(height: 30.0),
                            Container(
                              child: TextFormField(
                                obscureText: true,
                                decoration: ThemeHelper().textInputDecoration('Password', 'Enter your password'),
                                validator: (value){
                                  if(value!.isEmpty)
                                  {
                                    return "Please enter Password";

                                  }
                                  else
                                      return null;
                                },
                                onSaved: (value){
                                  userL.password=value!;
                                }
                                
                                
                              
                              ),
                              decoration: ThemeHelper().inputBoxDecorationShaddow(),
                            ),
                            SizedBox(height: 30.0),
                            Container(
                              child: TextFormField(
                                //obscureText: true,
                                decoration: ThemeHelper().textInputDecoration('EmailId', 'Enter your EmailId'),
                                validator: (value){
                                  if(value!.isEmpty)
                                  {
                                    return "Please enter EmailId";

                                  }
                                  else
                                      return null;
                                },
                                onSaved: (value){
                                  userL.email=value!;
                                }
                                
                                
                              
                              ),
                              decoration: ThemeHelper().inputBoxDecorationShaddow(),
                            ),
                            SizedBox(height: 15.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                              Container(
                                width:150,
                                height:75,
                                
                              decoration: ThemeHelper().buttonBoxDecoration(context),
                              child: ElevatedButton(
                                style: ThemeHelper().buttonStyle(),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                                  child: Text('Sign In'.toUpperCase(), style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),),
                                ),
                                onPressed: () async {
                                  //After successful login we will redirect to profile page. Let's create profile page now
                                  if (_formKey.currentState!.validate()) {
                                     _formKey.currentState!.save();
                                  //bool response = false;
                                  //response = auth.authUser(userL.emailID,userL.password);
                                  bool response=await auth.authUser(userL);
                                  if (response == true) {
                                    print(_textcontroller);
                                    print("\n\n\n\n");
                                    
                                     //Navigator.pushNamed(context,SecondViewRoute,arguments: _textcontroller.text);
                                     Navigator.push(
                                     context,
                                     MaterialPageRoute(
                                     builder: (context) =>SecondScreen(userName:userL.userName,user:userL
                                     )));
                                      
                                  }
                                  else
                                     
                                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Login Unsuccessful')));
                                      
             
                                   
                                  }
                                }
                                  //Navigator.pushNamed(context, SecondViewRoute);
                                
                              ),
                            ),
                            SizedBox(width: 5),
                            Container(
                              width: 150,
                              height: 75,
                              decoration: ThemeHelper().buttonBoxDecoration(context),
                              child: ElevatedButton(
                                style: ThemeHelper().buttonStyle(),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                                  child: Text('Sign Up'.toUpperCase(), style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),),
                                ),
                                onPressed: () async {
                                  //After successful login we will redirect to profile page. Let's create profile page now
                                  
                                  Navigator.pushNamed(context, SignupRoute);
                                }
                                
                              ),
                            ),

                            ],)
                           
                           
                          ],
                        )
                    ),
                  ],
                )
              ),
            ),
          ],
        ),
      ),
    );

  }
}