import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/update_status_controller.dart';

class UpdateStatusView extends GetView<UpdateStatusController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            shadowColor: Colors.white,
            title: Text(
              'Update Status',
              style: TextStyle(color: Colors.black),
              textAlign: TextAlign.left,
            ),
            centerTitle: true,
            leading: IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_back),
                color: Colors.black)),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 25, 25, 15),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Status",
                  labelStyle: TextStyle(color: Colors.black),
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(color: Colors.black, width: 1),
                  ),
                  //custom update
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(color: Colors.red, width: 1),
                  ),
                  hintText: "Input Status here.....",
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                ),
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
          ],
        ));
  }
}
