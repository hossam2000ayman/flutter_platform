import 'package:elite_mobile_app/screens/nba_page.dart';
import 'package:elite_mobile_app/widgets/navigation/main_nav.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Elite Mobile App',
      theme: ThemeData(
          primarySwatch: Colors.amber,
          fontFamily: "NeueHaas",
          textTheme: TextTheme(
            headline1: TextStyle(
                color: Colors.blueGrey.shade800,
                fontWeight: FontWeight.bold,
                fontSize: 24),
            headline5: TextStyle(
                color: Colors.blueGrey.shade800,
                fontWeight: FontWeight.w600,
                fontSize: 21),
            bodyText1: TextStyle(
                color: Colors.blueGrey.shade800,
                fontWeight: FontWeight.w500,
                fontSize: 14,
                fontStyle: FontStyle.italic),
          )),
      home: const EliteMainPage(),
    );
  }
}

class EliteMainPage extends StatefulWidget {
  final String title;
  const EliteMainPage({Key? key, this.title = 'Home'}) : super(key: key);
  @override
  _EliteMainPageState createState() => _EliteMainPageState();
}

class _EliteMainPageState extends State<EliteMainPage> {
  String category = "sports";
  String subCategory = "NBA";
  Widget content = const NBAPage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Image.asset("assets/elite-logo-text.png",
                width: 400,
                height: 300,
                cacheHeight: 50,
                cacheWidth: 120,
                fit: BoxFit.contain),
            tooltip: 'Navigation menu',
            onPressed: null,
          ),
          actions: const <Widget>[],
        ),
        body: Container(alignment: const Alignment(0, 0), child: content),
        bottomNavigationBar: const MainNav());
  }
}
