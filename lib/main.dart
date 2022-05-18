// @dart=2.9
import 'package:flutter/material.dart';
import 'package:salinas_soccer_league/homepage.dart';
import 'package:salinas_soccer_league/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

Map<int, Color> color = {
  50: Color.fromRGBO(14, 159, 77, .1),
  100: Color.fromRGBO(14, 159, 77, .2),
  200: Color.fromRGBO(14, 159, 77, .3),
  300: Color.fromRGBO(14, 159, 77, .4),
  400: Color.fromRGBO(14, 159, 77, .5),
  500: Color.fromRGBO(14, 159, 77, .6),
  600: Color.fromRGBO(14, 159, 77, .7),
  700: Color.fromRGBO(14, 159, 77, .8),
  800: Color.fromRGBO(14, 159, 77, .9),
  900: Color.fromRGBO(14, 159, 77, 1),
};

MaterialColor colorCustom = MaterialColor(0xFF0e9f4d, color);

class MyApp extends StatelessWidget {
  //const MyApp({Key }) : super(key: );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Salinas Soccer League',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: colorCustom,
          inputDecorationTheme: InputDecorationTheme(
            focusedBorder:
                UnderlineInputBorder(borderSide: BorderSide(color: Colors.red)),
          )),
      home: HomePage(),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);
//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             // Image.asset('lib/assets/images/ssl_logo.png')
//           ],
//         ),
//       ),
//       // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
