import 'package:flutter/material.dart';
import 'widget.dart';

class Loops extends StatefulWidget {
  const Loops({Key? key}) : super(key: key);

  @override
  _LoopsState createState() => _LoopsState();
}

class _LoopsState extends State<Loops> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Lop(),
    );
  }
}

class Lop extends StatefulWidget {
  const Lop({
    Key? key,
  }) : super(key: key);

  @override
  _LopState createState() => _LopState();
}

class _LopState extends State<Lop> {
  @override
  Widget build(BuildContext context) {
    const img = [
      "images/2.jpg",
      "images/3.jpg",
      "images/4.jpg",
      "images/6.jpg",
      "images/8.jpg",
      "images/9.jpg",
      "images/16.jpg",
      "images/10.jpg",
      "images/17.jpg",
      "images/13.jpg",
      "images/14.jpg",
      "images/7.jpg",
    ];
    const nam = [
      "Rayan",
      "Shahzad",
      "Ahmed",
      "Ali",
      "Waqas",
      "Afroz",
      "Rafia",
      "Jahnzaib",
      "Alisha",
      "+923322514588",
      "Friends Forever",
      "Owais",
    ];
    const msg = [
      "Where are you?",
      "How Are You?",
      "???",
      "Kaha ho?",
      "Thk",
      "Ok",
      "?",
      "I am Fine",
      "hmm",
      "No?",
      "...",
      "Acha",
    ];

    return Scaffold(
        body: Stack(
      clipBehavior: Clip.none,
      children: <Widget>[
        Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                for (var a = img.length - 1; a >= 0; a--)
                  Column(
                    children: [listtile(img[a], nam[a], msg[a])],
                  ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
