import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.logout),
            color: Colors.black,
          )
        ],
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
              child: Column(
            children: [
              AvatarGlow(
                endRadius: 110,
                glowColor: Colors.black,
                duration: Duration(seconds: 2),
                child: Container(
                  width: 175,
                  height: 175,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(100),
                    image: DecorationImage(
                      image: AssetImage("assets/logo/noimage.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Text(
                "Nama",
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              Text(
                "Email@Gmail.com",
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              )
            ],
          )),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(25, 25, 25, 25),
          child: Container(
            child: Column(
              children: [
                ListTile(
                  onTap: () {},
                  leading: Icon(Icons.note_add_outlined),
                  title: Text(
                    "Update Status",
                    style: TextStyle(fontSize: 25),
                  ),
                  trailing: Icon(Icons.arrow_right),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(Icons.person),
                  title: Text(
                    "Change Profile ",
                    style: TextStyle(fontSize: 25),
                  ),
                  trailing: Icon(Icons.arrow_right),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(Icons.color_lens),
                  title: Text(
                    "Change Theme ",
                    style: TextStyle(fontSize: 25),
                  ),
                  trailing: Text("Light"),
                )
              ],
            ),
          ),
        ),
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Chat apps",
                style: TextStyle(color: Colors.black54),
              ),
              Text(
                "V1.0",
                style: TextStyle(color: Colors.black54),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
