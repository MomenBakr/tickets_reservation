import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:tickets_reservation/modules/login/login_screen.dart';

import '../../network/http_signup.dart';
import '../login/login_controller.dart';

class SignUpScreen extends StatelessWidget {


  final emailController = TextEditingController();
  final controller = Get.put(LoginController());
  final passwordController = TextEditingController();
  final phoneController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 200,
            ),
            Center(
              child: Padding(
                padding:  EdgeInsets.all(15.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('SignUP to Get Started',
                        style: TextStyle(fontSize: 15,color: Colors.black),
                      ),

                      SizedBox(
                        height: 40,
                      ),
                      Padding(

                        padding:   EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Signup',
                              style:TextStyle(fontSize: 35,color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient:  LinearGradient(

                                begin: Alignment.centerLeft ,
                                end: Alignment.centerRight,

                                colors: [
                                  Color.fromRGBO(65, 193, 70, 1),
                                  Color.fromRGBO(65, 193, 70, 0.3),
                                ],
                              )
                          ),
                          child: Padding(
                            padding:  EdgeInsets.symmetric(horizontal: 8),
                            child: TextFormField(
                              controller: emailController,
                              decoration: const InputDecoration(
                                //label: Text('Username'),
                                labelText: 'Email',
                                hintText: 'momenbakr@gmail.com',
                              ) ,
                              keyboardType: TextInputType.emailAddress,
                              validator: (value){
                                if(value!.isEmpty)
                                  return 'Please enter your username';
                              },

                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: const LinearGradient(
                              begin: Alignment.centerLeft ,
                              end: Alignment.centerRight,

                              colors: [
                                Color.fromRGBO(65, 193, 70, 1),
                                Color.fromRGBO(65, 193, 70, 0.3),
                              ],
                            ),
                          ),
                          child: Padding(
                            padding:   EdgeInsets.symmetric(horizontal: 8),
                            child: TextFormField(
                              controller: passwordController ,
                              decoration: const InputDecoration(
                                label: Text('Password'),
                                hintText: '**** **** ****',
                                suffixIcon: Icon(Icons.visibility_outlined),
                              ) ,
                              validator: (value){
                                if(value!.isEmpty)
                                {
                                  return 'Password is too short';
                                }
                              },
                              onTap: (){
                              },

                            ),
                          ),
                        ),
                      ),



                      Padding(
                        padding:  EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: const LinearGradient(
                              begin: Alignment.centerLeft ,
                              end: Alignment.centerRight,

                              colors: [
                                Color.fromRGBO(65, 193, 70, 1),
                                Color.fromRGBO(65, 193, 70, 0.3),
                              ],
                            ),
                          ),
                          child: Padding(
                            padding:   EdgeInsets.symmetric(horizontal: 8),
                            child: TextFormField(
                              controller: phoneController ,
                              decoration: const InputDecoration(
                                label: Text('phone'),
                                hintText: '0102384789',

                              ) ,
                              validator: (value){
                                if(value!.isEmpty)
                                {

                                }
                              },
                              onTap: (){

                              },

                            ),
                          ),
                        ),
                      ),



                      SizedBox(
                        height: 70,
                      ),
                      GestureDetector(
                        onTap: (){
                          HttpSignUp.SaveData(

                              email: emailController.text,
                              password: passwordController.text,
                              phone: phoneController.text,
                              );
                          Get.to(LoginScreen());
                          // Get.snackbar(
                          //   "",
                          //   "",
                          //   titleText: Text('Hello ${emailController.text} !',style: const TextStyle(color: Colors.white),),
                          //   icon: const Icon(Icons.person, color: Colors.white),
                          //   duration: const Duration(seconds: 5),
                          //   backgroundColor: Colors.green,
                          //   instantInit: false,
                          //   snackPosition:  SnackPosition.TOP,
                          // );

                        },
                        child: Container(
                          width:220,
                          height:35,
                          child: Center(
                            child: Text('Submit',
                              style: TextStyle(
                                fontWeight:FontWeight.normal,
                                fontSize: 17,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.45),
                                blurRadius: 7,
                                spreadRadius: 2,
                                offset: const Offset(0,5),
                              ),
                            ],
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
