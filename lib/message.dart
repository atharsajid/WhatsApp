import 'main.dart';

import 'package:flutter/material.dart';
import 'package:whatsapp/main.dart';
import 'widget.dart';

class Message extends StatefulWidget {
  static const routename = "Message";
  const Message({Key? key}) : super(key: key);

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Msg(),
      routes: {MyApp.routename: (_) => const MyApp()},
    );
  }
}

class Msg extends StatefulWidget {
  const Msg({Key? key}) : super(key: key);

  @override
  _MsgState createState() => _MsgState();
}

class _MsgState extends State<Msg> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF008069),
        leading: const Icon(Icons.message),
        title: const Text(
          "Message",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              const Icon(Icons.video_camera_back_rounded),
              const SizedBox(
                width: 10,
              ),
              const Icon(Icons.call),
              const SizedBox(
                width: 5,
              ),
              popup("View Contact", "Media, Links, and Docs", "Search",
                  "Mute notification", "Wallpaper"),
            ],
          )
        ],
      ),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Column(
            children: [
              TextField(
                controller: _controller,
              ),
              TextField(
                controller: _controller,
              ),
              TextField(
                controller: _controller,
              ),
              FloatingActionButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(MyApp.routename);
                },
                child: const Icon(Icons.send),
                backgroundColor: const Color(0xFF008069),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
