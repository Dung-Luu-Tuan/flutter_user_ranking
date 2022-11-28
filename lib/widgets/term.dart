import 'package:flutter/material.dart';

class Term extends StatelessWidget {
  const Term({super.key, required this.isReadMore});

  final bool isReadMore;

  @override
  Widget build(BuildContext context) {
    List<Container> mywidgets = [];
    int arrayLength = isReadMore ? 5 : 1;
    double height1 = isReadMore ? 1500 : 400;
    for (int x = 1; x <= arrayLength; x++) {
      mywidgets = [
        ...mywidgets,
        Container(
          margin: const EdgeInsets.only(top: 15),
          child: const Text('Point 1',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto',
                color: Colors.black,
              )),
        ),
        Container(
          child: const Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w300,
                fontFamily: 'Roboto',
                color: Colors.grey,
              )),
        )
      ];
    }

    return Container(
        padding: const EdgeInsets.all(24),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(12.0), topLeft: Radius.circular(12.0)),
          color: Colors.white,
        ),
        width: 500,
        height: height1,
        margin: const EdgeInsets.only(top: 10),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, children: mywidgets));
  }
}
