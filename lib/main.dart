import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widge_detail/routing/router.dart';
import 'package:flutter_widge_detail/routing/routing_constants.dart';
import 'package:flutter_widge_detail/screens/undefined_screen/undefined_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Named Routing',
      onGenerateRoute: generateRoute,
      initialRoute: HOME_VIEW_ROUTE,
//      onUnknownRoute: (settings) => MaterialPageRoute(
//          builder: (context) => UndefinedScreen(name: settings.name)),
    );
  }
}
