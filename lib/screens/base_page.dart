import 'package:flutter/material.dart';

class BasePage extends StatelessWidget {
  const BasePage({
    super.key,
    required this.body,
    required this.showBottonAppBar,
  });

  final Widget body;
  final bool showBottonAppBar;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: showBottonAppBar
          ? BottomAppBar(
              height: size.height / 13,
              shape: const CircularNotchedRectangle(),
              elevation: 10,
              notchMargin: 10.0,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  IconButton(
                    icon: SizedBox(
                        height: 25, child: Image.asset("assets/clockIcon.png")),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: SizedBox(
                      height: 25,
                      child: Image.asset("assets/personIcon.png"),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            )
          : null,
      floatingActionButton: showBottonAppBar
          ? FloatingActionButton(
              onPressed: () {},
              child: Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.all(
                    Radius.circular(100),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(81, 153, 247, 0.5),
                      spreadRadius: 7,
                      blurRadius: 7,
                      offset: Offset(0, 7),
                    ),
                  ],
                ),
                child: const Icon(
                  Icons.add,
                  size: 30,
                ),
              ))
          : null,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: size.width / 20,
          vertical: size.width / 6,
        ),
        child: body,
      ),
    );
  }
}
