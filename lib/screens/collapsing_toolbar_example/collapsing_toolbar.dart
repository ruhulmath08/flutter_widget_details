import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCollapsingToolBar extends StatelessWidget {
  final String argument;

  const MyCollapsingToolBar({Key key, this.argument}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(argument),
      ),
      body: Center(
        child: Text('Collapsing ToolBar'),
      ),
    );
  }
}