import "dart:convert";

import "package:http/http.dart" as httpp;

class HttpSignUp {
  static SaveData(
      {
        required String email,
        required String password,
        required String phone,
        }) async {
    var headers = {
      'userKey':
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NywiaWF0IjoxNjg2MzM3MDg2fQ.gEMyQ7Ii8UxCYVLiZJV_snFfMiKchgq_yuGU4LOB5b0',
      'Content-Type': 'application/json'
    };
    var request = httpp.Request('POST', Uri.parse('https://lead.up.railway.app/data/newDataText'));
    request.body = json.encode({
      "modelName": "users",
      "data": {
        "email": email.toString(),
        "password": password,
        "phone": phone.toString(),


      }
    });
    request.headers.addAll(headers);
    httpp.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      var data = await response.stream.bytesToString();
      var dataDecoded = jsonDecode(data);

      print(dataDecoded);
    } else {
      print(response.reasonPhrase);
    }
  }
}