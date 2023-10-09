import 'dart:convert';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:http/http.dart' as httpp ;
import 'package:tickets_reservation/modules/home/home_screen.dart';


class HttpAuth extends GetxController{

  //var url = Uri.https('example.com', 'whatsit/create');
  static Future login({required String email,required String password,})async{

    var headers = {
      'userkey': 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NywiaWF0IjoxNjg2MzM3MDg2fQ.gEMyQ7Ii8UxCYVLiZJV_snFfMiKchgq_yuGU4LOB5b0',
      'Content-Type': 'application/json'
    };
    var request = httpp.Request('POST', Uri.parse("https://lead.up.railway.app/pmms/auth/login"));
    request.body = json.encode({
      "modelName": "users",
      "email": "$email",
      "password": "$password"
    });
    request.headers.addAll(headers);

    httpp.StreamedResponse response = await request.send();
    //var statusTest = request.body;
    if (response.statusCode == 200) {
      //print(await response.stream.bytesToString());
      var result = await response.stream.bytesToString();
      var formattedResult=jsonDecode(result);
      var statusCheck = formattedResult['status'];
      print(statusCheck);
      if( statusCheck == 200)
      {
        successLogin();
      }

      //print(statusTest);
      print(formattedResult['message']);
      //print(formattedResult['status']);
      //print(response.statusCode);
    }
    else {
      var error=await response.stream.bytesToString();
      var formattedError=jsonDecode(error);
      print(formattedError['message']);
      print(formattedError['status']);
    }
  }

  static successLogin(){
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(builder: (context) =>  HomeScreen()),
    Get.off(HomeScreen());



  }
}
