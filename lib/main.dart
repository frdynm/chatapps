import 'package:chatapps/app/controllers/auth_controller.dart';
import 'package:chatapps/app/utils/SplashPage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/utils/ErorPage.dart';
import 'app/utils/LoadingPage.dart';
import 'app/routes/app_pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  // deklarasi authentifikasi
  final authC = Get.put(AuthController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        // Jika Eror
        if (snapshot.hasError) {
          return ErorPage();
        }

        // return jika benas
        if (snapshot.connectionState == ConnectionState.done) {
          //bikin builder baru

          return GetMaterialApp(
            title: "Home Page",
            initialRoute: Routes.CHATROOM,
            getPages: AppPages.routes,
          );

          // return FutureBuilder(
          //   //bikin future builder
          //   future: Future.delayed(Duration(seconds: 3)),
          //   builder: (context, snapshot) {
          //     if (snapshot.connectionState == ConnectionState.done) {
          //       return Obx(
          //         () => GetMaterialApp(
          //           debugShowCheckedModeBanner: false,
          //           title: "ChatApps",
          //           initialRoute: authC.Skipintro.isTrue
          //               ? authC.isAuth.isTrue
          //                   ? Routes.HOME
          //                   : Routes.LOGIN_PAGE
          //               : Routes.INTRO,
          //           getPages: AppPages.routes,
          //         ),
          //       );
          //     } //selagi menunggu jalanin splashpage
          //     return SplashPage();
          //   },
          // );
        }

        // return jika Loading Page
        return LoadingPage();
      },
    );
  }
}
