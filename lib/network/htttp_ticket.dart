import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as httpp ;
class HttpTicket extends GetxController{

  static Future BookTicket({required name ,required date , required time ,required price}) async {
    var headers = {
      'userKey': 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NywiaWF0IjoxNjg2MzM3MDg2fQ.gEMyQ7Ii8UxCYVLiZJV_snFfMiKchgq_yuGU4LOB5b0',
      'Content-Type': 'application/json'
    };
    var request = httpp.Request('POST', Uri.parse('https://lead.up.railway.app/data/newDataText'));
    request.body = json.encode({
      "modelName": "tickets",
      "data": {
        "name": "${name}",
        "date": "${date}",
        "time": "${time}",
        "price": "${price}"
      }
    });
    request.headers.addAll(headers);
    httpp.StreamedResponse response = await request.send();

    var result = await response.stream.bytesToString();
    var formattedResult=jsonDecode(result);
    var statusCheck = formattedResult['status'];
    print(statusCheck);



    if (response.statusCode == 200) {
      //print(await response.stream.bytesToString());
      print('success');
    }
    else {
    print(response.reasonPhrase);
    }

  }


}