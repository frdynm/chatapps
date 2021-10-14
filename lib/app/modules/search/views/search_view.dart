import 'package:chatapps/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../controllers/search_controller.dart';

class SearchView extends GetView<SearchController> {
  final List<Widget> friends = List.generate(
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
        "orang${index + 1}@Gmail.com",
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
      ),
      trailing: Chip(label: Text("Message")),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //preferred size agar appbard menjadi sedikit melebar
      appBar: PreferredSize(
          child: AppBar(
            backgroundColor: Colors.red,
            title: Text('Search'),
            centerTitle: true,

            //menambahkan icon back ke appbar
            leading: IconButton(
              onPressed: () => Get.back(),
              icon: Icon(Icons.arrow_back),
            ),
            //mengisi space di appbar menggunakan flexiblespace
            flexibleSpace: Padding(
              padding: const EdgeInsets.fromLTRB(30, 70, 30, 20),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: TextField(
                  //mengganti cursor
                  cursorColor: Colors.red,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(color: Colors.white, width: 1),
                    ),
                    //agar waktu di klik warnanya bisa di custom
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(color: Colors.white, width: 1),
                    ),
                    hintText: "Search friend here...",
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 30,
                    ),
                    suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.search,
                          color: Colors.red,
                        )),
                  ),
                ),
              ),
            ),
          ),
          preferredSize: Size.fromHeight(120)),

      //mengecheck jika array friends.leng nya ada isi maka akan menampilkan text namun jika tidak ada maka akan keluar gambar lottie
      body: friends.length == 0
          ? Center(
              child: Container(
                  width: Get.width * 0.7,
                  height: Get.height * 0.7,
                  child: Lottie.asset("assets/lottie/empty.json")),
            )
          : ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: friends.length,
              itemBuilder: (context, index) => friends[index],
            ),
    );
  }
}
