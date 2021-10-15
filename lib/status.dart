import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  const Status({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const img = [
      "images/6.jpg",
      "images/3.jpg",
      "images/2.jpg",
      "images/4.jpg",
      "images/5.jpg",
    ];
    const nam = [
      "Rayan",
      "Shahzad",
      "Ahmed",
      "Ali",
      "Amir",
    ];
    const msg = [
      "Today, 01:09 pm",
      "Today, 11:09 pm",
      "Today, 12:09 am",
      "Today, 10:09 pm",
      "Today, 09:09 am",
    ];
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              children: [
                statustile(
                    "images/4.jpg", "My Status", "Tap to add status update"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Padding(padding: EdgeInsets.all(8)),
                    Text(
                      "Recent updates",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color(0xFF677781),
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                for (var a = img.length - 1; a >= 0; a--)
                  Column(
                    children: [statustile(img[a], nam[a], msg[a])],
                  ),
              ],
            ),
          ),
          Positioned(
            top: 480,
            right: 10,
            child: FloatingActionButton(
              onPressed: () {},
              child: const Icon(Icons.edit,color: Color(0xFF55666F),),
              backgroundColor: const Color(0xFFE9EEF1),
            ),
          ),
          Positioned(
            top: 550,
            right: 10,
            child: FloatingActionButton(
              onPressed: () {},
              child: const Icon(Icons.camera_alt),
              backgroundColor: const Color(0xFF008069),
            ),
          ),
        ],
      ),
    );
  }
}

Widget statustile(String img, String nam, String time) {
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
    subtitle: Text(
      time,
      style: const TextStyle(
        color: Color(0xFF677781),
        fontSize: 16,
      ),
    ),
  );
}
