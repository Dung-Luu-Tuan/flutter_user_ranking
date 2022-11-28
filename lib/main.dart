import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:testproject/term.dart';
import 'package:testproject/top_rank.dart';

import 'list_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(title: 'User Ranking'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isReadMore = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.title, textAlign: TextAlign.center)),
      ),
      body: SingleChildScrollView(
          child: Center(
              child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    children: [
                      Container(
                          padding: const EdgeInsets.all(24),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15.0),
                                topLeft: Radius.circular(15.0)),
                            color: Colors.white,
                          ),
                          width: 500,
                          height: 450,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Container(
                                        height: 25,
                                        decoration: BoxDecoration(
                                          color: Colors.orange[400],
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: const Center(
                                          child: Text('POST',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'Roboto',
                                                color: Color.fromARGB(
                                                    255, 255, 255, 255),
                                              )),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        height: 25,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        child: const Center(
                                          child: Text('WANT TO GO',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'Roboto',
                                                color: Color.fromARGB(
                                                    255, 202, 202, 202),
                                              )),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Expanded(
                                      flex: 0,
                                      child: Container(
                                        margin: const EdgeInsets.only(
                                            top: 20.0, right: 20.0, bottom: 20),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        child: const Text('MONTHLY',
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Roboto',
                                              color: Color.fromARGB(
                                                  255, 202, 202, 202),
                                            )),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 0,
                                      child: Container(
                                        margin: const EdgeInsets.only(
                                            top: 20.0, bottom: 20),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        child: const Text('YEARLY',
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Roboto',
                                              color: Colors.black,
                                              decoration:
                                                  TextDecoration.underline,
                                              decorationColor: Colors.orange,
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      'assets/images/icon/ranking_gradient.svg',
                                      width: 25,
                                      height: 25,
                                      color: const Color.fromARGB(
                                          255, 196, 76, 36),
                                    ), // <-- SEE HERE
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Expanded(
                                      flex: 0,
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child: const Text('USER RANKING',
                                            style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Roboto',
                                              color: Colors.black,
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Expanded(
                                      flex: 0,
                                      child: Container(
                                        margin:
                                            const EdgeInsets.only(bottom: 10),
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child: const Text('Top 100 Users',
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: 'Roboto',
                                              color: Colors.black,
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Expanded(
                                      flex: 0,
                                      child: SvgPicture.asset(
                                        'assets/images/icon/icon_score_master_sliver-45.svg',
                                        width: 20,
                                        height: 20,
                                      ),
                                    ),
                                    Expanded(
                                      flex: 0,
                                      child: Container(
                                        margin: const EdgeInsets.only(
                                            right: 5.0, left: 5.0),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        child:
                                            const Text('Your current ranking :',
                                                style: TextStyle(
                                                  fontSize: 10,
                                                  fontFamily: 'Roboto',
                                                  color: Colors.black,
                                                )),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 0,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        child: const Text('7th',
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Roboto',
                                              color: Colors.orange,
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                                const TopRank(),
                              ])),
                      const RankingList(),
                      SizedBox(
                        width: 500,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  flex: 0,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.only(top: 0, left: 0),
                                    child: const Text('Term of Use',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w800,
                                          fontFamily: 'Roboto',
                                          color: Colors.black,
                                        )),
                                  ),
                                ),
                                Expanded(
                                    flex: 0,
                                    child: Container(
                                        margin: const EdgeInsets.only(
                                            right: 10, left: 10),
                                        child: InkWell(
                                          onTap: () => setState(
                                              () => {isReadMore = !isReadMore}),
                                          child: SvgPicture.asset(
                                            isReadMore
                                                ? 'assets/images/icon/arrow-up_grey.svg'
                                                : 'assets/images/icon/arrow-down_black.svg',
                                            width: 20,
                                            height: 20,
                                          ),
                                        ))),
                              ],
                            ),
                            Term(isReadMore: isReadMore),
                          ],
                        ),
                      )
                    ],
                  )))),
      bottomNavigationBar: Container(
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
      ),
      backgroundColor: Colors.yellow[200],
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key, required this.s});

  final String s;

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 50));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Center(
        child: ElevatedButton(
          style: style,
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("The user rank is: $s"),
        ),
      ),
    );
  }
}
