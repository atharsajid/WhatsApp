import 'package:flutter/material.dart';

class Callss extends StatelessWidget {
  const Callss({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const img = [
      "images/6.jpg",
      "images/7.jpg",
      "images/8.jpg",
      "images/9.jpg",
      "images/10.jpg",
    ];
    const nam = [
      "Rayan",
      "Shahzad",
      "Ahmed",
      "Ali",
      "Amir",
    ];
    const msg = [
      " (2) 9 October, 01:09 pm",
      " (3) 9 October, 12:09 pm",
      " 10 October, 03:05 pm",
      " 11 October, 04:19 pm",
      " 13 9 October, 05:23 pm",
    ];
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              children: [
                for (var a = img.length - 1; a >= 0; a--)
                  Column(
                    children: [callstile(img[a], nam[a], msg[a])],
                  ),
              ],
            ),
          ),
          Positioned(
            top: 550,
            right: 10,
            child: FloatingActionButton(
              onPressed: () {},
              child: const Icon(Icons.add_ic_call_sharp),
              backgroundColor: const Color(0xFF008069),
            ),
          ),
        ],
      ),
    );
  }
}

Widget callstile(String img, String nam, String time) {
  return ListTile(
    leading: CircleAvatar(
      backgroundImage: AssetImage(img),
    ),
    title: Text(
      nam,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 18,
      ),
    ),
    subtitle: Row(
      children: [
        const Icon(
          Icons.call_made_outlined,
          color: Color(0xFF008069),
        ),
        Text(
          time,
          style: const TextStyle(
            color: Color(0xFF677781),
            fontSize: 16,
          ),
        ),
      ],
    ),
    trailing: const Icon(
      Icons.call,
      color: Color(0xFF008069),
    ),
  );
}
