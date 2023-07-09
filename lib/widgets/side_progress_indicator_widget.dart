
import 'package:flutter/material.dart';

class SideProgressIndicatorWidget extends StatelessWidget {
  const SideProgressIndicatorWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 15,
          width: 15,
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: Colors.white,
              border:
                  Border.all(width: 2, color: Colors.blue),
              borderRadius: BorderRadius.circular(50)),
        ),
        const SizedBox(
          height: 60,
          child: VerticalDivider(
            width: 3,
            thickness: 2,
            color: Colors.blue,
          ),
        ),
        Container(
          height: 15,
          width: 15,
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: Colors.white,
              border:
                  Border.all(width: 2, color: Colors.blue),
              borderRadius: BorderRadius.circular(50)),
        ),
        const SizedBox(
          height: 60,
          child: VerticalDivider(
            width: 3,
            thickness: 2,
            color: Colors.blue,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(3.0),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 22,
                width: 22,
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        width: 2, color: Colors.blue),
                    borderRadius: BorderRadius.circular(50)),
              ),
              Container(
                height: 18,
                width: 18,
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(
                        width: 2, color: Colors.white),
                    borderRadius: BorderRadius.circular(50)),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 150,
          child: VerticalDivider(
            width: 3,
            thickness: 2,
            color: Colors.blue,
          ),
        ),
        Container(
          height: 15,
          width: 15,
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: Colors.white,
              border:
                  Border.all(width: 2, color: Colors.blue),
              borderRadius: BorderRadius.circular(50)),
        ),
      ],
    );
  }
}
