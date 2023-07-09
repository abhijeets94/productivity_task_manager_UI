import 'package:flutter/material.dart';

import 'circular_avatar_widget.dart';

class SchedulesExpandedWidget extends StatelessWidget {
  const SchedulesExpandedWidget({
    Key? key,
    required this.size,
    required this.theme,
    required this.title,
    required this.subTitle,
    required this.subTitleCont,
    required this.time,
    required this.backgroundColor,
  }) : super(key: key);

  final Size size;
  final ThemeData theme;
  final String title;
  final String subTitle;
  final String subTitleCont;
  final String time;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height / 4.5,
      decoration: BoxDecoration(
          color: backgroundColor, borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: theme.textTheme.displayMedium!
                      .copyWith(color: Colors.white),
                ),
                Text(time,
                    style: theme.textTheme.labelSmall!
                        .copyWith(color: Colors.white)),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              subTitle,
              style:
                  theme.textTheme.displaySmall!.copyWith(color: Colors.white),
            ),
            Text(
              subTitleCont,
              style:
                  theme.textTheme.displaySmall!.copyWith(color: Colors.white),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  width: size.width / 3,
                  child: Stack(
                    fit: StackFit.loose,
                    children: [
                      CirculatAvatarWidget(
                        size: size,
                        backgroundColor: Colors.pink[100]!,
                        borderWidth: 2,
                        image: "assets/user1.png",
                      ),
                      Positioned(
                        left: size.width / 15,
                        child: CirculatAvatarWidget(
                          size: size,
                          backgroundColor: Colors.pink[50]!,
                          borderWidth: 2,
                          image: "assets/user2.png",
                        ),
                      ),
                      Positioned(
                        left: size.width / 7,
                        child: CirculatAvatarWidget(
                          size: size,
                          backgroundColor: Colors.blue[50]!,
                          borderWidth: 2,
                          image: "assets/user3.png",
                        ),
                      ),
                      Positioned(
                        left: size.width / 4.5,
                        child: CirculatAvatarWidget(
                          size: size,
                          backgroundColor: Colors.blue[900]!,
                          borderWidth: 2,
                          image: "assets/user4.png",
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: size.width / 8.5,
                  height: size.width / 8.5,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: const DecorationImage(
                      image: AssetImage(
                        "assets/loading.png",
                      ),
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


class SchedulesWidget extends StatelessWidget {
  const SchedulesWidget({
    Key? key,
    required this.size,
    required this.theme,
    required this.title,
    required this.subTitle,
    required this.time,
  }) : super(key: key);

  final Size size;
  final ThemeData theme;
  final String title;
  final String subTitle;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(248, 249, 253, 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: theme.textTheme.displayMedium,
              ),
              Text(time, style: theme.textTheme.labelSmall),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            subTitle,
            style: theme.textTheme.displaySmall,
          )
        ],
      ),
    );
  }
}
