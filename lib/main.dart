import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:tickets_reservation/modules/home/home_screen.dart';
import 'package:tickets_reservation/network/http_bid.dart';
import 'package:tickets_reservation/onboarding/onboarding_screen.dart';
import 'package:http/http.dart' as httpp ;

import 'modules/signup/sign_up_screen.dart';

void main() async{
  //WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // GetProfileData();
  //HttpBid();
  //Get.testMode = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      //home: OnboardingScreen(),
    );
  }
}

