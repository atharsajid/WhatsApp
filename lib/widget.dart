import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

appbar1() {
  return AppBar(
    backgroundColor: const Color(0xFF008069),
    title: const Text(
      "WhatsApp",
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.search),
      ),
      popup("New Group", "New brodcast", "Linked devices", "Starred Messages",
          "Settings"),
    ],
    bottom: tabbar(),
  );
}

tabbar() {
  return const TabBar(
      labelColor: Colors.white,
      indicatorColor: Colors.white,
      unselectedLabelColor: Color(0xFFB4D9D2),
      tabs: [
        Tab(
          text: "CHATS",
        ),
        Tab(
          text: "STATUS",
        ),
        Tab(
          text: "CALLS",
        ),
      ]);
}

Widget listtile(String image, String name, String msg) {
  return (ListTile(
    leading: CircleAvatar(
      backgroundImage: AssetImage(image),
    ),
    title: Text(
      name,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 18,
      ),
    ),
    subtitle: Text(
      msg,
      style: const TextStyle(
        color: Color(0xFF677781),
        fontSize: 16,
      ),
    ),
    trailing: Text(
      DateFormat.jm().format(DateTime.now()),
      style: const TextStyle(
        color: Color(0xFF677781),
        fontSize: 16,
      ),
    ),
  ));
}

Widget popup(
    String menu1, String menu2, String menu3, String menu4, String menu5) {
  return PopupMenuButton<String>(
    onSelected: (value) {},
    itemBuilder: (BuildContext context) {
      return [
        PopupMenuItem(
          child: Text(menu1),
          value: menu1,
        ),
        PopupMenuItem(
          child: Text(menu2),
          value: menu2,
        ),
        PopupMenuItem(
          child: Text(menu3),
          value: menu3,
        ),
        PopupMenuItem(
          child: Text(menu4),
          value: menu4,
        ),
        PopupMenuItem(
          child: Text(menu5),
          value: menu5,
        ),
      ];
    },
  );
}

Widget msgbtn(var context, var route) {
  return Positioned(
    top: 550,
    right: 10,
    child: FloatingActionButton(
      onPressed: () {
        Navigator.of(context).pushNamed(route);
      },
      child: const Icon(Icons.chat),
      backgroundColor: const Color(0xFF008069),
    ),
  );
}

// Widget bckbtn(var conte, var rou) {
//   return Positioned(
//     top: 598,
//     right: 10,
//     child: FloatingActionButton(
//       onPressed: () {
//         Navigator.of(conte).pushNamed(rou);
//       },
//       child: const Icon(Icons.arrow_back_ios_new),
//       backgroundColor: const Color(0xFF008069),
//     ),
//   );
// }
