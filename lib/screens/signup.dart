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
class SignUpPage extends StatefulWidget{
  const  SignUpPage({Key? key}): super(key:key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage>{
  double _headerHeight = 250;
  late String ?pass;
  final  _formKey = GlobalKey<FormState>();
  User userL = new User( userName: '', password: '', email: '',);
  Auth auth = new Auth();
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
                      'Signup into your account',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(height: 20.0),
                    Form(
                      key: _formKey,
                        child: Column(
                          children: [
                            
                            Container(
                              child: TextFormField(
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
                            SizedBox(height: 20.0),
                            Container(
                              child: TextFormField(
                                obscureText: true,
                                decoration: ThemeHelper().textInputDecoration('Password', 'Enter your password'),
                                validator: (value){
                                   pass=value;
              
                                  if(value!.isEmpty)

                                  {
                                    return "Please enter Password";

                                  }
                                  else if(value.length<6)
                                      return "Please enter password of length 6";
                                  else
                                      return null;
                                },
                                onSaved: (value){
                                  userL.password=value!;
                                }
                                
                                
                              
                              ),
                              decoration: ThemeHelper().inputBoxDecorationShaddow(),
                            ),
                            SizedBox(height: 20.0),
                            Container(
                              child: TextFormField(
                                obscureText: true,
                                decoration: ThemeHelper().textInputDecoration('Confirm Password', 'Renter your password'),
                                validator: (value){
                                  if(value!.isEmpty)
                                  {
                                    return "Please enter Password";

                                  }
                                   if(value!=pass)
                                     return "Password does not match";
                                   else
                                      return null;
                                },
                                onSaved: (value){
                                  userL.password=value!;
                                }
                                
                                
                              
                              ),
                              decoration: ThemeHelper().inputBoxDecorationShaddow(),
                            ),
                            
                            SizedBox(height: 20.0),
                            
                            SizedBox(height: 20.0),
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
                            SizedBox(height: 20.0),
                            Container(
                              decoration: ThemeHelper().buttonBoxDecoration(context),
                              child: ElevatedButton(
                                style: ThemeHelper().buttonStyle(),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                                  child: Text('Register'.toUpperCase(), style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                                ),
                                onPressed: () async {
                                  //After successful login we will redirect to profile page. Let's create profile page now
                                  if (_formKey.currentState!.validate()) {
                                     _formKey.currentState!.save();
                                  //bool response = false;
                                  //response = auth.authUser(userL.emailID,userL.password);
                                  //bool response=await auth.authUser(userL);
                                  await auth.addUser(userL);
                                  
                                  //if (response == true) {
                                  Navigator.pushNamed(context, LoginViewRoute);
                                 }
                                }
                               // }
                                
                              ),
                            ),
                            
                           
                           
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