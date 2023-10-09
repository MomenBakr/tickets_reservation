import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as httpp ;
import 'package:tickets_reservation/modules/bid/bid_controller.dart';

class  HttpBid extends GetxController {
  var controller = Get.put(BidController());

  static Future<dynamic> BidTicket({required price}) async {
    var headers = {
      'userKey': 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NywiaWF0IjoxNjg2MzM3MDg2fQ.gEMyQ7Ii8UxCYVLiZJV_snFfMiKchgq_yuGU4LOB5b0',
      'Content-Type': 'application/json'
    };
    var request = httpp.Request('POST',
        Uri.parse('https://lead.up.railway.app/data/bid?modelName=bids'));
    request.body = json.encode({
      "price": price,
    });
    request.headers.addAll(headers);

    httpp.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
    }
    else {
      print(response.reasonPhrase);
    }
  }

    Future<dynamic> HighestBid() async {
    var headers = {
      'userKey': 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NywiaWF0IjoxNjg2MzM3MDg2fQ.gEMyQ7Ii8UxCYVLiZJV_snFfMiKchgq_yuGU4LOB5b0'
    };
    var request = httpp.Request('GET', Uri.parse(
        'https://lead.up.railway.app/data/viewByModel?modelName=bids'));
    request.headers.addAll(headers);

    //   httpp.StreamedResponse response = await request.send();
    //   var result = await response.stream.bytesToString();
    //   var formattedResult = jsonDecode(result);
    //   var High = formattedResult[0]['bidPrice'];
    //   controller.highest=formattedResult[0]['bidPrice'];
    //   print(High);
    //   return controller.highest;
    // }
    request.headers.addAll(headers);

    httpp.StreamedResponse response = await request.send();


    if (response.statusCode == 200) {
      var res = await response.stream.bytesToString();
      controller.highest = jsonDecode(res)[0]['bidPrice'];
      print(controller.highest);
    } else {
      print(response.reasonPhrase);
    }
  }
}