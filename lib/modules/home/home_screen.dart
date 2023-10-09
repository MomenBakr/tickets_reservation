import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:tickets_reservation/sports/sports_category.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40,),
              Padding(
                padding:  EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Text('Pick your ticket ',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500,)),
                    Text('NOW!',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w800,),)
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: (){
                      Get.to(SportsCatScreen());
                    },
                    child: Container(
                      width:350,
                      height: 350,
                      decoration: BoxDecoration(
                        color: Colors.green[400],
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding:  EdgeInsets.all(10.0),
                            child: Container(
                              width: 300,
                              height: 250,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage('https://assets.publishing.service.gov.uk/government/uploads/system/uploads/image_data/file/176455/s300_Football_gov.uk.jpg'),)),
                            ),
                          ),
                          Text('Sports',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w500),)
                        ],
                      )
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      width:350,
                      height: 350,
                      decoration: BoxDecoration(
                        color: Colors.green[400],
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding:  EdgeInsets.all(10.0),
                            child: Container(
                              width: 300,
                              height: 250,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage('https://uploads-ssl.webflow.com/5ff4e43997c4ec6aa5d646d1/603d547ed5c5fd6365dabbef_industry%20expert%20roundup%20-%20why%20are%20events%20important.png'),)),
                            ),
                          ),
                          Text('Events',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w500),)
                        ],
                      )
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
