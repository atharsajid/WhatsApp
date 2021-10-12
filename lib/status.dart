import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  const Status({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.black,
          ),
          const Positioned(
            top: 10,
            left: 10,
            child: Icon(Icons.person, color: Color(0xFF008069),),
          ),
        ],
      ),
    );
  }
}
