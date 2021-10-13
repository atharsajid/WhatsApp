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
    child: Stack(
      children: <Widget>[
        Container(
          child: Column(
            children: [
              for (var a = img.length - 1; a >= 0; a--)
                Column(
                  children: [listtile(img[a], nam[a], msg[a])],
                ),
            ],
          ),
        ),
        Positioned(
          top: 550,
          right: 10,
          child: FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.chat),
            backgroundColor: const Color(0xFF008069),
          ),
        ),
      ],
    ),
  ));
}
