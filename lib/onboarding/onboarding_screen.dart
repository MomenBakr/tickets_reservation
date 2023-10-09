import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tickets_reservation/modules/login/login_controller.dart';
import 'package:tickets_reservation/modules/login/login_screen.dart';

class OnboardingScreen extends StatelessWidget {

  final controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      init: LoginController(),
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                SizedBox(height: 100,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height:200,
                      width: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: NetworkImage('https://i.pinimg.com/564x/91/67/60/916760bf340cab9f3bda7955163fa5b7.jpg')),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50,),
                Text('Booking has never been easier',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700)
                ),
                Spacer(),
                InkWell(
                  onTap: (){
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) =>  LoginScreen()),
                    // );
                    Get.to(LoginScreen());
                    //Get.to(LoginScreen());
                  },
                  child: Container(
                    height: 50 ,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(child: Text('Get Started',
                      style: TextStyle(fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),)),
                  ),
                ),
                SizedBox(height: 30,)
              ],
            ),
          ),
        );
      },
    );
  }
}
