import 'package:flutter/material.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
              color: Colors.blue,
              height: 500,
              width: MediaQuery.of(context).size.width,
            ),
            Container(
              color: Colors.yellow,
              height: 500,
              width: MediaQuery.of(context).size.width,
            )
          ]),
        ),
      ),
    );
  }
}
