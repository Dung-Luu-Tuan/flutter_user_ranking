import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                  flex: 0,
                  child: Container(
                    margin: const EdgeInsets.only(left: 40),
                    child: const Text("7",
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Roboto',
                          color: Colors.white,
                        )),
                  )),
              Expanded(
                  flex: 0,
                  child: Container(
                    margin: const EdgeInsets.only(right: 10, left: 10),
                    child: Image.asset(
                      'assets/images/category/category icon-34.png',
                      width: 50,
                      height: 50,
                    ),
                  )),
              Expanded(
                  flex: 0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 0,
                        child: Container(
                          margin: const EdgeInsets.only(top: 0, left: 0),
                          child: const Text('VietNam',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Roboto',
                                color: Colors.black,
                              )),
                        ),
                      ),
                      Expanded(
                        flex: 0,
                        child: Container(
                          margin: const EdgeInsets.only(top: 5, bottom: 5),
                          child: const Text('1413 posts',
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w800,
                                  fontFamily: 'Roboto',
                                  color: Colors.white)),
                        ),
                      ),
                    ],
                  )),
            ],
          ),
          Row(
            children: const [],
          )
        ],
      ),
    );
  }
}
