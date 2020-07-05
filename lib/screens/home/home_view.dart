import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widge_detail/routing/routing_constants.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('Login'),
        onPressed: () {
          Navigator.pushNamed(context, LOGIN_VIEW_ROUTE,
              arguments: 'From LoginScreen');
        },
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: <Widget>[
              ButtonTheme(
                height: 40.0,
                child: RaisedButton(
                  color: Colors.blue,

                  child: Text(
                    'Collapsing Toolbar',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, COLLAPSING_TOOLBAR_ROUTE,
                        arguments: 'Collapsing Toolbar');
                  },
                ),
              ),
              SizedBox(height: 10),
              ButtonTheme(
                height: 40.0,
                child: RaisedButton(
                  color: Colors.blue,

                  child: Text(
                    'Bottom Navigation',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, MY_BOTTOM_NAVIGATION_ROUTE,
                        arguments: 'Bottom Navigation');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
