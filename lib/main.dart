import 'package:flutter/material.dart';
import 'package:whatsapp/status.dart';
import 'package:whatsapp/widget.dart';
import 'widget.dart';
import 'chat.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: appbar1(),
            body: TabBarView(children: [
              loops(),
          const Status(),
              Container(
                color: Colors.black,
              ),
            ])),
      ),
    );
  }
}
