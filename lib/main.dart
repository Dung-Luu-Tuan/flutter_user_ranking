import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:testproject/widgets/term.dart';
import 'package:testproject/widgets/top_rank.dart';

import 'widgets/bottom_navigation.dart';
import 'widgets/list_view.dart';

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
  bool isPost = true;
  bool isYearly = true;

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
                                        child: InkWell(
                                            onTap: () =>
                                                setState(() => {isPost = true}),
                                            child: Container(
                                              height: 25,
                                              decoration: BoxDecoration(
                                                color: isPost
                                                    ? Colors.orange[400]
                                                    : Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Center(
                                                child: Text('POST',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontFamily: 'Roboto',
                                                      color: isPost
                                                          ? const Color
                                                                  .fromARGB(255,
                                                              255, 255, 255)
                                                          : const Color
                                                                  .fromARGB(255,
                                                              202, 202, 202),
                                                    )),
                                              ),
                                            ))),
                                    Expanded(
                                      child: InkWell(
                                        onTap: () =>
                                            setState(() => {isPost = false}),
                                        child: Container(
                                          height: 25,
                                          decoration: BoxDecoration(
                                            color: !isPost
                                                ? Colors.orange[400]
                                                : Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                          child: Center(
                                              child: Text('WANT TO GO',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: 'Roboto',
                                                    color: !isPost
                                                        ? const Color.fromARGB(
                                                            255, 255, 255, 255)
                                                        : const Color.fromARGB(
                                                            255, 202, 202, 202),
                                                  ))),
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
                                        child: InkWell(
                                            onTap: () => setState(
                                                () => {isYearly = false}),
                                            child: Text('MONTHLY',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: 'Roboto',
                                                  color: !isYearly
                                                      ? Colors.black
                                                      : const Color.fromARGB(
                                                          255, 202, 202, 202),
                                                ))),
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
                                        child: InkWell(
                                            onTap: () => setState(
                                                () => {isYearly = true}),
                                            child: Text('YEARLY',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: 'Roboto',
                                                  color: isYearly
                                                      ? Colors.black
                                                      : const Color.fromARGB(
                                                          255, 202, 202, 202),
                                                  // decoration:
                                                  //     TextDecoration.underline,
                                                  // decorationColor:
                                                  //     Colors.orange,
                                                ))),
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
                                TopRank(isPost: isPost, isYearly: isYearly),
                              ])),
                      RankingList(isPost: isPost),
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
      bottomNavigationBar: BottomNavigation(isPost: isPost),
      backgroundColor: Colors.yellow[200],
    );
  }
}
