import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  const Status({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.loose,
        children: [
          // Container(
          //   height: 500,
          //   width: 400,
          //   color: Colors.amber,
          // ),
          Image.asset("images/2.jpg"),
        const  Align(
            alignment: Alignment.center,
            child: Text("hello", style: TextStyle(color: Colors.white),),
          )
        ],
      ),
    );
  }
}
