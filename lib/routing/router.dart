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
