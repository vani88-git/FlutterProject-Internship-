import 'dart:async';
import 'dart:async';
import 'dart:collection';

import 'package:project_flutter/utils/database_helper.dart';
import 'package:project_flutter/model/user.dart';
import 'package:scoped_model/scoped_model.dart';
//final dbHelper = DatabaseHelper.instance;

class Auth extends Model{
  Future? addUser(user){
    
    DatabaseHelper.instance.insert(user.toMap());
    print("\n\n\n\n\n\n");
    print(user);
  }
  Future<bool> authUser(currUser) async{
    List<User> queryRows=await DatabaseHelper.instance.getAll();
    for(var u in queryRows)
    {
      print("currUser:");
      print(currUser);
      print("u:");print(u);
      if(u.email==currUser.email && u.password==currUser.password)
        return true;
    }
    
    return false;
  }
  
}
/*import 'package:project_flutter/model/user.dart';
import 'package:scoped_model/scoped_model.dart';
import 'dart:collection';

class Auth extends Model {
 Set<User>uv=new HashSet();
  User user1=new User(
    userName: 'Vidya',
    emailID: 'vidya@gmail.com',
    password: '12345',
  );//one user prathima
  User user2=new User(
     userName: 'Vani',
    emailID: 'vani@gmail.com',
    password: '12345'


  );//User pallavi
  
  Future<bool> authUser(currUser) async{
    uv.add(user1);
    uv.add(user2);
    for(User u in uv)
    {
      if(u.emailID==currUser.emailID && u.password==currUser.password)
        return true;
    }
    // if(uv.contains(user1))
    // if(user1.email==userVerified.email && user1.password==userVerified.password)
    // return true;
    return false;
  }
}*/