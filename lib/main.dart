// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:whatsapp/calls.dart';
import 'package:whatsapp/status.dart';
import 'package:whatsapp/widget.dart';
import 'widget.dart';
import 'chat.dart';
import 'message.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  static const routename = "Home";
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      home: Home(),
      routes: {Message.routename: (_) => Message()},
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: appbar1(),
          body: TabBarView(children: [
            Stack(
              clipBehavior: Clip.none,
              children: [Loops(), msgbtn(context, Message.routename)],
            ),
            Status(),
            Callss(),
          ])),
    );
  }
}
