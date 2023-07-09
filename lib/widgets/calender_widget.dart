import 'package:flutter/material.dart';

class CalendarWidget extends StatelessWidget {
  const CalendarWidget({
    super.key,
    required this.size,
    required this.dates,
    required this.theme,
  });

  final Size size;
  final List<Map<String, String>> dates;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height / 8.5, // Provide a fixed or bounded height
      padding: EdgeInsets.only(top: size.height / 35),
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: dates.length,
        itemBuilder: (context, index) {
          final day = dates[index]["day"]!;
          final date = dates[index]["date"]!;

          return SizedBox(
            width: size.width / 8, // Adjust the width as needed
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  day,
                  style: theme.textTheme.labelSmall!.copyWith(
                      fontWeight:
                          day == "Sat" ? FontWeight.bold : FontWeight.normal,
                      color: day == "Sat"
                          ? const Color.fromRGBO(81, 153, 247, 1)
                          : Colors.grey[600]),
                ),
                const SizedBox(height: 8),
                Text(
                  date,
                  style: theme.textTheme.labelSmall!.copyWith(
                      fontWeight:
                          day == "Sat" ? FontWeight.bold : FontWeight.normal,
                      color: day == "Sat"
                          ? const Color.fromRGBO(81, 153, 247, 1)
                          : Colors.black),
                ),
                Text(
                  day == "Sat" ? "•" : "",
                  style: theme.textTheme.labelSmall!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: day == "Sat"
                          ? const Color.fromRGBO(81, 153, 247, 1)
                          : Colors.grey[600]),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
