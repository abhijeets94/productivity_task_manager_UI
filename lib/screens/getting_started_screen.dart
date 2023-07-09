import 'package:flutter/material.dart';
import 'package:productivity_task_manager/screens/base_page.dart';
import 'package:productivity_task_manager/screens/details_screen.dart';

class GettingStartedScreen extends StatelessWidget {
  const GettingStartedScreen({super.key});
  static const routeName = "/Getting-Started";

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    Size size = MediaQuery.of(context).size;
    return BasePage(
      showBottonAppBar: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Productive",
            style: theme.textTheme.displayLarge,
          ),
          Text(
            "Task Manager",
            style: theme.textTheme.displayLarge,
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            "Plan your daily work",
            style: theme.textTheme.titleSmall,
          ),
          Text(
            "and convenient task manager for all.",
            style: theme.textTheme.titleSmall,
          ),
          Container(
            margin: EdgeInsets.only(top: size.height / 30),
            height: size.height / 2,
            width: size.height / 2,
            child: Image.asset(
              "assets/gettingStarted.png",
              fit: BoxFit.fill,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: size.height / 40),
            width: size.width,
            height: size.height / 14,
            child: ElevatedButton(
                onPressed: () =>
                    Navigator.pushNamed(context, DetailsScreen.routeName),
                child: Text(
                  "Get Started",
                  style: theme.textTheme.titleSmall!.copyWith(
                    color: Colors.white,
                  ),
                )),
          )
        ],
      ),
    );
  }
}
