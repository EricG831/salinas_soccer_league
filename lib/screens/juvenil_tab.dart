import 'package:flutter/material.dart';
import 'package:salinas_soccer_league/screens/home_screen.dart';

class JuvenilTab extends StatefulWidget {
  const JuvenilTab({Key? key}) : super(key: key);

  @override
  State<JuvenilTab> createState() => _JuvenilTabState();
}

class _JuvenilTabState extends State<JuvenilTab> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SizedBox.expand(
        child: Container(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(children: [
              Container(
                color: Colors.white,
                height: 250,
                width: MediaQuery.of(context).size.width,
              ),
              Container(
                color: Colors.blueGrey,
                height: 750,
                width: MediaQuery.of(context).size.width,
              )
            ]),
          ),
        ),
      ),
      JuvenilMenu(),
    ]);
  }
}
