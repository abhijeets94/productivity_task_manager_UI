import 'package:flutter/material.dart';
import 'package:productivity_task_manager/utils/routes.dart';
import 'package:productivity_task_manager/screens/getting_started_screen.dart';
import 'package:productivity_task_manager/utils/theme.dart';

void main() {
  runApp(const ProductivityTaskManager());
}

class ProductivityTaskManager extends StatelessWidget {
  const ProductivityTaskManager({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme(),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      home: const GettingStartedScreen(),
    );
  }
}
