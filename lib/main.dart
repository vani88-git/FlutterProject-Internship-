import 'package:flutter/material.dart';
import 'package:project_flutter/authentication.dart';
import 'package:project_flutter/routing_constants.dart';
import 'package:project_flutter/screens/Splash.dart';
import 'package:project_flutter/screens/secondscreen.dart';
import 'package:project_flutter/screens/login_page.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:project_flutter/model/user.dart';
import 'router.dart' as router;


//import 'package:project_flutter/screens/new_task_screen.dart';


void main() {
  runApp(Social());
}

class Social extends StatelessWidget {
  final auth=Auth();
  @override
  Widget build(BuildContext context) {
    return new ScopedModel<Auth>(
      model:auth,
    child:MaterialApp(
       title: 'Named Routing',
       onGenerateRoute: router.generateRoute,
       initialRoute: HomeViewRoute,
        
      ),
    );
    
  }
}


