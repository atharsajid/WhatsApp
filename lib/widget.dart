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
      
      PopupMenuButton<String>(
          onSelected: (value) {},
          itemBuilder: (BuildContext context) {
            return [
              const PopupMenuItem(
                child: Text("New Group"),
                value: "New Group",
              ),
              const PopupMenuItem(
                child: Text("New Broadcast"),
                value: "New Broadcast",
              ),
              const PopupMenuItem(
                child: Text("Linked devices"),
                value: "Linked devices",
              ),
              const PopupMenuItem(
                child: Text("Starred devices"),
                value: "Starred devices",
              ),
              const PopupMenuItem(
                child: Text("Settings"),
                value: "Settings",
              ),
            ];
          })
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
