import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  final String argument;

  const LoginView({Key key, this.argument}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Text('Home'),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
      body: Center(
        child: Text('Login: $argument'),
      ),
    );
  }
}
