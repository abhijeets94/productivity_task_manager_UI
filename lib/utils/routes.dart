import 'package:flutter/material.dart';
import 'package:productivity_task_manager/screens/details_screen.dart';
import 'package:productivity_task_manager/screens/getting_started_screen.dart';

Route onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case GettingStartedScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => const GettingStartedScreen(),
        settings: settings,
      );
    case DetailsScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => DetailsScreen(),
        settings: settings,
      );
    default:
      return MaterialPageRoute(
        builder: (_) => const Scaffold(
          backgroundColor: Colors.red,
          body: Center(
            child: Text(
              "INVALID PAGE ROUTE!!",
            ),
          ),
        ),
      );
  }
}
