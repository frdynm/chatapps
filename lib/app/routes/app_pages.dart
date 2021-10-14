import 'package:get/get.dart';

import 'package:chatapps/app/modules/Intro/bindings/intro_binding.dart';
import 'package:chatapps/app/modules/Intro/views/intro_view.dart';
import 'package:chatapps/app/modules/LoginPage/bindings/login_page_binding.dart';
import 'package:chatapps/app/modules/LoginPage/views/login_page_view.dart';
import 'package:chatapps/app/modules/change_profile/bindings/change_profile_binding.dart';
import 'package:chatapps/app/modules/change_profile/views/change_profile_view.dart';
import 'package:chatapps/app/modules/chatroom/bindings/chatroom_binding.dart';
import 'package:chatapps/app/modules/chatroom/views/chatroom_view.dart';
import 'package:chatapps/app/modules/home/bindings/home_binding.dart';
import 'package:chatapps/app/modules/home/views/home_view.dart';
import 'package:chatapps/app/modules/profile/bindings/profile_binding.dart';
import 'package:chatapps/app/modules/profile/views/profile_view.dart';
import 'package:chatapps/app/modules/search/bindings/search_binding.dart';
import 'package:chatapps/app/modules/search/views/search_view.dart';
import 'package:chatapps/app/modules/update_status/bindings/update_status_binding.dart';
import 'package:chatapps/app/modules/update_status/views/update_status_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.INTRO,
      page: () => IntroView(),
      binding: IntroBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN_PAGE,
      page: () => LoginPageView(),
      binding: LoginPageBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.CHATROOM,
      page: () => ChatroomView(),
      binding: ChatroomBinding(),
    ),
    GetPage(
      name: _Paths.SEARCH,
      page: () => SearchView(),
      binding: SearchBinding(),
    ),
    GetPage(
      name: _Paths.UPDATE_STATUS,
      page: () => UpdateStatusView(),
      binding: UpdateStatusBinding(),
    ),
    GetPage(
      name: _Paths.CHANGE_PROFILE,
      page: () => ChangeProfileView(),
      binding: ChangeProfileBinding(),
    ),
  ];
}
