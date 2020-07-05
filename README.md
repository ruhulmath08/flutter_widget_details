<h2>Flutter Widget Details</h2>
<hr>
<ol>
    <a href="#">
        <li>Flutter Route</li>
    </a>
    <a href="#flutterRoute">
        <li>Flutter Bottom Navigation Bar</li>
    </a>
    <a href="#">
        <li>Flutter Collapsible ToolBar</li>
    </a>
    <a href="#">
        <li>Send Mail From Flutter App</li>
    </a>
    <a href="#">
        <li>Send Phone Call From Flutter App</li>
    </a>
</ol>

<div id="flutterRoute">
    <h3>Flutter Route</h3>
    <ol>
        <a>
            <li>Create 'routing' folder inside lib</li>
            <li>Create 'route.dart' and 'routing_constants.dart' file inside 'routing' folder</li>
            <li>Create 'route.dart' and 'routing_constants.dart' file inside 'routing' folder</li>
        </a>
    </ol>    
    <h3>route.dart</h3>   
     
```.dart
import 'package:flutter/material.dart';
import 'package:flutter_widge_detail/routing/routing_constants.dart';
import 'package:flutter_widge_detail/screens/bottom_navigation_example/bottom_navigation_bar.dart';
import 'package:flutter_widge_detail/screens/collapsing_toolbar_example/collapsing_toolbar.dart';
import 'package:flutter_widge_detail/screens/home/home_view.dart';
import 'package:flutter_widge_detail/screens/login/login_view.dart';
import 'package:flutter_widge_detail/screens/undefined_screen/undefined_screen.dart';
   
Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HOME_VIEW_ROUTE:
      return MaterialPageRoute(builder: (context) => HomeView());

    case LOGIN_VIEW_ROUTE:
      var loginArgument = settings.arguments;
      return MaterialPageRoute(
        builder: (context) => LoginView(
          argument: loginArgument,
        ),
      );

    case MY_BOTTOM_NAVIGATION_ROUTE:
      var bottomNavigationArgument = settings.arguments;
      return MaterialPageRoute(
        builder: (context) => MyBottomNavigation(
          argument: bottomNavigationArgument,
        ),
      );

    case COLLAPSING_TOOLBAR_ROUTE:
      var collapseToolbarArgument = settings.arguments;
      return MaterialPageRoute(
        builder: (context) => MyCollapsingToolBar(
          argument: collapseToolbarArgument,
        ),
      );

    default:
      return MaterialPageRoute(
        builder: (context) => UndefinedScreen(
          name: settings.name,
        ),
      );
  }
}
```
    <h3>routing_constants.dart</h3> 
</div>