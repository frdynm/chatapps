import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';

import '../controllers/change_profile_controller.dart';

class ChangeProfileView extends GetView<ChangeProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // button sisi kiri
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
        ),
        title: Text(
          'Change Profile',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.red,

        //button sisi kanan
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.save),
            color: Colors.black,
            iconSize: 40,
          )
        ],
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.only(top: 50),
          child: AvatarGlow(
            endRadius: 75,
            glowColor: Colors.black,
            duration: Duration(seconds: 2),
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                image: DecorationImage(
                  image: AssetImage("assets/logo/noimage.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(25),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(100),
            ),
            child: TextField(
              //memanggil controler
              controller: controller.emailC,
              //mengganti cursor
              cursorColor: Colors.red,
              decoration: InputDecoration(
                labelText: "Email",
                labelStyle: TextStyle(color: Colors.black),
                focusColor: Colors.red,
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(color: Colors.black, width: 1),
                ),
                //agar waktu di klik warnanya bisa di custom
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(color: Colors.black, width: 1),
                ),
                hintText: "Email@Gmail.com",
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 30,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(100),
            ),
            child: TextField(
              controller: controller.nameC,
              //mengganti cursor
              cursorColor: Colors.red,
              decoration: InputDecoration(
                labelText: "Nama",
                labelStyle: TextStyle(color: Colors.black),
                focusColor: Colors.red,
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(color: Colors.black, width: 1),
                ),
                //agar waktu di klik warnanya bisa di custom
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(color: Colors.black, width: 1),
                ),
                hintText: "Nama Aku Adalah",
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 30,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(25, 25, 25, 0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(100),
            ),
            child: TextField(
              controller: controller.statusC,
              //mengganti cursor
              cursorColor: Colors.red,
              decoration: InputDecoration(
                focusColor: Colors.red,
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(color: Colors.black, width: 1),
                ),
                //agar waktu di klik warnanya bisa di custom
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(color: Colors.black, width: 1),
                ),
                hintText: "Input status here ...",
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 30,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 50, right: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("adas.Jpeg"),
              TextButton(
                  onPressed: () {},
                  child: Text("Pilih File..",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Container(
            width: Get.width,
            child: ElevatedButton(
              onPressed: () {},
              child: Text("UPDATE",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center),
              style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  //agar bulat si buttonnya
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  )),
            ),
          ),
        )
      ]),
    );
  }
}
