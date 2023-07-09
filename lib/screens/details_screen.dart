import 'package:flutter/material.dart';

import 'package:productivity_task_manager/screens/base_page.dart';

import '../widgets/calender_widget.dart';
import '../widgets/schedule_widget.dart';
import '../widgets/side_progress_indicator_widget.dart';

class DetailsScreen extends StatelessWidget {
  DetailsScreen({super.key});
  static const routeName = "/Details-Screen";

  final dates = [
    {"day": "Mon", "date": "4"},
    {"day": "Tue", "date": "5"},
    {"day": "Wed", "date": "6"},
    {"day": "Thu", "date": "7"},
    {"day": "Fri", "date": "8"},
    {"day": "Sat", "date": "9"},
    {"day": "Sun", "date": "10"},
  ];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    Size size = MediaQuery.of(context).size;
    return BasePage(
      showBottonAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "May 5, 2020",
              style: theme.textTheme.labelSmall,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              "Today",
              style: theme.textTheme.displayLarge,
            ),
            CalendarWidget(
              size: size,
              dates: dates,
              theme: theme,
            ),
            SizedBox(
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: size.height / 1.8,
                      width: 100,
                      decoration: const BoxDecoration(
                          // color: Colors.red,
                          ),
                      child: const SideProgressIndicatorWidget(),
                    ),
                  ),
                  Flexible(
                    flex: 5,
                    child: SizedBox(
                      height: size.height / 1.7,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SchedulesWidget(
                            size: size,
                            theme: theme,
                            title: "Wakeup",
                            subTitle: "Early wakeup from bed and fresh",
                            time: "7:00 AM",
                          ),
                          SchedulesWidget(
                            size: size,
                            theme: theme,
                            title: "Morning Exercise",
                            subTitle: "4 Types of exercise",
                            time: "8:00 AM",
                          ),
                          SchedulesExpandedWidget(
                            size: size,
                            theme: theme,
                            title: "Meeting",
                            subTitle: "Zoom call, Discuss team task",
                            subTitleCont: "for the day",
                            backgroundColor:
                                const Color.fromRGBO(81, 153, 247, 1),
                            time: "9:00 AM",
                          ),
                          SchedulesWidget(
                            size: size,
                            theme: theme,
                            title: "Breakfast",
                            subTitle:
                                "Morning breakfast with bread, banana, egg bowl and tea",
                            time: "10:00 AM",
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
