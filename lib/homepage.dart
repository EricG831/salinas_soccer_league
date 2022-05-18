// ignore: file_names
// ignore_for_file: file_names

// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:salinas_soccer_league/screens/adulto_tab.dart';
import 'package:salinas_soccer_league/screens/home_tab.dart';
import 'package:salinas_soccer_league/screens/juvenil_tab.dart';
import 'package:salinas_soccer_league/widgets/content_view.dart';
import 'package:salinas_soccer_league/widgets/custom_tab.dart';
import 'package:salinas_soccer_league/widgets/custom_tab_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late double screenHeight;
  late double topPadding;
  late double bottomPadding;
  late TabController tabController;
  List<ContentView> contentViews = [
    ContentView(
        tab: CustomTab(
          title: 'Home',
        ),
        content: HomeTab()),
    ContentView(
        tab: CustomTab(
          title: 'Juvenil',
        ),
        content: JuvenilTab()),
    ContentView(
        tab: CustomTab(
          title: 'Adulto',
        ),
        content: AdultoTab()),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: contentViews.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    topPadding = screenHeight * .05;
    bottomPadding = screenHeight * .01;

    return Scaffold(
        // backgroundColor: Color(0xff1e1e24),
        backgroundColor: Theme.of(context).primaryColor,
        body: Padding(
          padding: EdgeInsets.only(top: topPadding, bottom: bottomPadding),
          child: LayoutBuilder(builder: (context, constraints) {
            if (constraints.maxWidth > 715) {
              return SingleChildScrollView(child: desktopView());
            } else {
              return mobileView();
            }
          }),
        ));
  }

  Widget desktopView() {
    return Stack(children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomTabBar(
            controller: tabController,
            tabs: contentViews.map((e) => e.tab).toList(),
          ),
          Container(
            height: screenHeight * .85,
            child: TabBarView(
              controller: tabController,
              children: contentViews.map((e) => e.content).toList(),
            ),
          )
        ],
      ),
    ]);
  }

  Widget mobileView() {
    return Container();
  }
}
