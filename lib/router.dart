import 'package:js/js.dart';

import 'package:flutter/material.dart';
import 'package:project_flutter/routing_constants.dart';
import 'package:project_flutter/screens/Splash.dart';
import 'package:project_flutter/screens/login_page.dart';
import 'package:project_flutter/screens/secondscreen.dart';
import 'package:project_flutter/screens/secondscreen.dart';
import 'package:project_flutter/model/user.dart';
import 'package:project_flutter/screens/signup.dart';

Route <dynamic> generateRoute(RouteSettings settings)
{
  User userL=new User(email: '', userName: '', password: '');
  switch(settings.name)
  {
    case HomeViewRoute:return MaterialPageRoute(builder: (context)=>Splash());
    case LoginViewRoute:
     return MaterialPageRoute(builder: (context)=>LoginPage());
    case SecondViewRoute: return MaterialPageRoute(builder: (context)=>SecondScreen(user: userL, userName: '',));
    case SignupRoute:return MaterialPageRoute(builder:(context)=>SignUpPage());
     default:
     return MaterialPageRoute(builder: (context)=>SecondScreen(user: userL, userName: '',));
  }

}