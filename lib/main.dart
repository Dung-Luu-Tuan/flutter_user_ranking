import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:testproject/cubit/cubit.dart';
import 'package:testproject/widgets/bottom_navigation.dart';
import 'package:testproject/widgets/list_view.dart';
import 'package:testproject/widgets/term.dart';
import 'package:testproject/widgets/top_rank.dart';

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
        home: BlocProvider(
          create: (context) => RankingCubit(),
          child: const MyHomePage(title: 'User Ranking'),
        ));
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
        child: BlocBuilder<RankingCubit, RankingState>(
          builder: (context, state) {
            return Column(
              children: <Widget>[
                Container(
                    padding: const EdgeInsets.all(24),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15.0),
                          topLeft: Radius.circular(15.0)),
                      color: Colors.white,
                    ),
                    height: 450,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Expanded(
                                  child: InkWell(
                                      onTap: () {
                                        BlocProvider.of<RankingCubit>(context)
                                            .isPost();
                                      },
                                      child: Container(
                                        height: 25,
                                        decoration: BoxDecoration(
                                          color: state.rank
                                              ? Colors.orange[400]
                                              : Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        child: Center(
                                          child: Text('POST',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'Roboto',
                                                color: state.rank
                                                    ? const Color.fromARGB(
                                                        255, 255, 255, 255)
                                                    : const Color.fromARGB(
                                                        255, 202, 202, 202),
                                              )),
                                        ),
                                      ))),
                              Expanded(
                                child: InkWell(
                                  onTap: () {
                                    BlocProvider.of<RankingCubit>(context)
                                        .isWantToGo();
                                  },
                                  child: Container(
                                    height: 25,
                                    decoration: BoxDecoration(
                                      color: !state.rank
                                          ? Colors.orange[400]
                                          : Colors.white,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Center(
                                        child: Text('WANT TO GO',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Roboto',
                                              color: !state.rank
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
                              Container(
                                margin: const EdgeInsets.only(
                                    top: 20.0, right: 20.0, bottom: 20),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: InkWell(
                                    onTap: () =>
                                        setState(() => {isYearly = false}),
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
                              Container(
                                margin: const EdgeInsets.only(
                                    top: 20.0, bottom: 20),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: InkWell(
                                    onTap: () =>
                                        setState(() => {isYearly = true}),
                                    child: Text('YEARLY',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Roboto',
                                          color: isYearly
                                              ? Colors.black
                                              : const Color.fromARGB(
                                                  255, 202, 202, 202),
                                        ))),
                              ),
                            ],
                          ),
                          SvgPicture.asset(
                            'assets/images/icon/ranking_gradient.svg',
                            width: 25,
                            height: 25,
                            color: const Color.fromARGB(255, 196, 76, 36),
                          ),
                          Container(
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
                          Container(
                            margin: const EdgeInsets.only(bottom: 10),
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SvgPicture.asset(
                                'assets/images/icon/icon_score_master_sliver-45.svg',
                                width: 20,
                                height: 20,
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                    right: 5.0, left: 5.0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: const Text('Your current ranking :',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontFamily: 'Roboto',
                                      color: Colors.black,
                                    )),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: const Text('7th',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Roboto',
                                      color: Colors.orange,
                                    )),
                              ),
                            ],
                          ),
                          TopRank(isPost: state.rank, isYearly: isYearly),
                        ])),
                RankingList(isPost: state.rank),
                InkWell(
                  onTap: () => setState(() => {isReadMore = !isReadMore}),
                  child: Wrap(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 20, left: 0),
                        child: const Text('Term of Use',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                              fontFamily: 'Roboto',
                              color: Colors.black,
                            )),
                      ),
                      Container(
                        margin:
                            const EdgeInsets.only(right: 10, left: 10, top: 20),
                        child: SvgPicture.asset(
                          isReadMore
                              ? 'assets/images/icon/arrow-up_grey.svg'
                              : 'assets/images/icon/arrow-down_black.svg',
                          width: 20,
                          height: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                Term(isReadMore: isReadMore),
              ],
            );
          },
        ),
      ))),
      bottomNavigationBar:
          BlocBuilder<RankingCubit, RankingState>(builder: (context, state) {
        return BottomNavigation(isPost: state.rank);
      }),
      backgroundColor: Colors.yellow[200],
    );
  }
}
