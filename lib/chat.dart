import 'package:flutter/material.dart';
import 'widget.dart';

Widget loops() {
  const img = [
    "images/1.jpg",
    "images/3.jpg",
    "images/2.jpg",
    "images/4.jpg",
    "images/1.jpg",
    "images/3.jpg",
    "images/2.jpg",
    "images/4.jpg",
    "images/1.jpg",
    "images/3.jpg",
    "images/2.jpg",
    "images/4.jpg",
    "images/1.jpg",
    "images/3.jpg",
    "images/2.jpg",
    "images/4.jpg",
  ];
  const nam = [
    "Rayan",
    "Shahzad",
    "Ahmed",
    "Ali",
    "Rayan",
    "Shahzad",
    "Ahmed",
    "Ali",
    "Rayan",
    "Shahzad",
    "Ahmed",
    "Ali",
    "Rayan",
    "Shahzad",
    "Ahmed",
    "Ali",
  ];
  const msg = [
    "Where are you?",
    "How Are You?",
    "???",
    "afadfs",
    "Where are you?",
    "How Are You?",
    "???",
    "afadfs",
    "Where are you?",
    "How Are You?",
    "???",
    "afadfs",
    "Where are you?",
    "How Are You?",
    "???",
    "afadfs",
  ];

  return Scaffold(
      body: SingleChildScrollView(
    child: Column(
      children: <Widget>[
        for (var a = img.length - 1; a >= 0; a--)
          Column(
            children: [listtile(img[a], nam[a], msg[a])],
          ),
        Positioned(
          bottom: 100,
          right: 100,
          child: FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.chat),
            backgroundColor: const Color(0xFF008069),
          ),
        )
      ],
    ),
  ));
}
