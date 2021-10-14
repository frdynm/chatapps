import 'package:chatapps/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  // bikini list buat ngebuild listview
  final List<Widget> mychats = List.generate(
    20,
    (index) => ListTile(
      //fungsi ketika di tap
      onTap: () => Get.toNamed(Routes.CHATROOM),
      leading: CircleAvatar(
        backgroundColor: Colors.black38,
        child: Image.asset(
          "assets/logo/noimage.png",
          fit: BoxFit.cover,
        ),
        radius: 30,
      ),
      title: Text(
        "Orang ke ${index + 1}",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
      ),
      subtitle: Text(
        "status Orang ke ${index + 1}",
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
      ),
      trailing: Chip(label: Text("12")),
    ),
  ).reversed.toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Material(
            elevation: 10,
            child: Container(
              margin: EdgeInsets.only(top: context.mediaQueryPadding.top),
              padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Chats",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                  Material(
                    //agar material menjadi bulat
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.red,
                    child: InkWell(
                      //inkwel agar bisa di klik
                      borderRadius: BorderRadius.circular(50),
                      onTap: () => Get.toNamed(Routes.PROFILE),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Icon(
                          Icons.person,
                          size: 35,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: mychats.length,
              itemBuilder: (context, index) => mychats[index],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.toNamed(Routes.SEARCH),
        child: Icon(Icons.search),
        backgroundColor: Colors.red,
      ),
    );
  }
}
