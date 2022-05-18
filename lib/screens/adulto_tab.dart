import 'package:flutter/material.dart';

class AdultoTab extends StatefulWidget {
  const AdultoTab({Key? key}) : super(key: key);

  @override
  State<AdultoTab> createState() => _AdultoTabState();
}

class _AdultoTabState extends State<AdultoTab> {
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
