import 'package:turfind/auth/loginauth.dart';
import 'package:turfind/auth/register.dart';
import 'package:turfind/pages/intropage.dart';
import 'package:turfind/routes/app_routes_name.dart';
import 'package:get/get.dart';
import 'package:turfind/screens/individual/detailscreen.dart';
import 'package:turfind/screens/individual/home.dart';
import 'package:turfind/screens/individual/profilescreen.dart';
import 'package:turfind/screens/individual/settings.dart';
import 'package:turfind/widget/mainBNB.dart';

List<GetPage> getPage = [
  GetPage(name: "/intro", page: () => const IntroPage()),

  GetPage(name: "/login", page: () =>  LoginAuth()),

  GetPage(name: "/signup", page: () =>  Register()),

  GetPage(name: "/main", page: () => MainBNB()),

  GetPage(name: "/detail", page: () =>  DetailScreen()),

  GetPage(name: "/profile", page: () => ProfileScreeen()),

  GetPage(name: "/settings", page: () => const Settings()),
];