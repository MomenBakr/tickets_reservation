import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:http/http.dart' as httpp ;
import 'package:tickets_reservation/modules/login/login_controller.dart';
import 'package:tickets_reservation/modules/signup/sign_up_screen.dart';
import 'package:tickets_reservation/network/http_login.dart';

class LoginScreen extends StatelessWidget {


  final emailController = TextEditingController();
  final controller = Get.put(LoginController());
  final passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      init: LoginController(),
      builder: (controller){
        //controller.data = emailController.text;
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
                          Text('Login to Get Started',
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
                                Text('Login',
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

                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                onPressed: (){
                                  //Get.to(()=>ForgotPasswordScreen());
                                },
                                child: Text('Forget Password ?',
                                  style: TextStyle(color: Colors.indigo.shade900),) ,
                              ),
                            ],
                          ),

                          SizedBox(
                            height: 50,
                          ),
                          GestureDetector(
                            onTap: (){
                              HttpAuth.login(email: emailController.text, password: passwordController.text);
                              Get.snackbar(
                                "",
                                "",
                                titleText: Text('Hello ${emailController.text} !',style: const TextStyle(color: Colors.white),),
                                icon: const Icon(Icons.person, color: Colors.white),
                                duration: const Duration(seconds: 5),
                                backgroundColor: Colors.green,
                                instantInit: false,
                                snackPosition:  SnackPosition.TOP,
                              );

                            },
                            child: Container(
                              width:220,
                              height:35,
                              child: Center(
                                child: Text('Login',
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('You don\'t have an account ?',
                                style: TextStyle(color: Colors.black),
                              ),
                              TextButton(
                                onPressed: (){
                                 Get.to(
                                     SignUpScreen());
                                }, child: Text('SignUp',
                                style: TextStyle(color: Colors.indigo.shade900),),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },

    );
  }
}

