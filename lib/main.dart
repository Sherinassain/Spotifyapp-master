import 'package:flutter/material.dart';
import 'package:sportsappui/pages/constants.dart';
import 'package:sportsappui/tabpage/home/home_page.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple,scaffoldBackgroundColor: constblack),
      home: Home_page(),
    );
  }
}
