/*class User {
  String emailID="";
  String password="";
  String userName=" ";
  User({ required this.emailID,required this.password, required this.userName});
}*/
class User{
  String userName;
  String email;
  String password;
  
  User
  ( {
    this.userName='',
    this.email='',
    this.password='',
    
  });

  Map<String, dynamic> toMap() {
    return {
      'userName': userName,
      'email':email,
      'password':password,
      
    };
  }
  
  // Implement toString to make it easier to see information about
  // each  when using the print statement.
  @override
  String toString() {
    return 'User{userName: $userName, email:$email ,password:$password}';
  }
}
