import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyBottomNavigation extends StatefulWidget {
  final String argument;

  const MyBottomNavigation({Key key, this.argument}) : super(key: key);

  @override
  _MyBottomNavigationState createState() => _MyBottomNavigationState();
}

class _MyBottomNavigationState extends State<MyBottomNavigation> {

  int currentTabIndex = 0;
  onTapped(int index) {
    setState(() {
      currentTabIndex = index;
      if(currentTabIndex == 0){
        _emailLaunchUri;
      }
    });
  }

  //send mail from flutter app
  final Uri _emailLaunchUri = Uri(
      scheme: 'mailto:ruhulmath08@gmail.com',
      path: 'smith@example.com',
      queryParameters: {
        'subject': 'Example Subject & Symbols are allowed!'
      }
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.argument),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTapped,
        currentIndex: currentTabIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            title: Text('Mail'),
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.phone),
            title: Text('Call'),
          )
        ],
      ),
      body: Center(
        child: Text('Bottom Navigation'),
      ),
    );
  }
}

//https://www.youtube.com/watch?v=xjYFdn6Qths&list=PLMrtoLeyKwKwokybjCEZeKiiQr_Lh9xYV&index=10&t=0s 1:45