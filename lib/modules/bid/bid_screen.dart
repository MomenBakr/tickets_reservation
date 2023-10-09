import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:tickets_reservation/modules/bid/bid_controller.dart';
import 'package:tickets_reservation/network/http_bid.dart';
// class MyWidget extends StatelessWidget {
//   final Future<dynamic> highestBidFuture = HttpBid.HighestBid();
//
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder<dynamic>(
//       future: highestBidFuture,
//       builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return CircularProgressIndicator();
//         } else if (snapshot.hasError) {
//           return Text('Error: ${snapshot.error}');
//         } else {
//           return Text(
//             '${snapshot.data}',
//             style: TextStyle(fontWeight: FontWeight.w400, fontSize: 10),
//           );
//         }
//       },
//     );
//   }
// }

class BidScreen extends StatelessWidget {

  var BidControllerr = TextEditingController();
  var controller = Get.put(BidController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text('Bid Here!'),
      ),
      body: Column(

        children: [

          Padding(
            padding: const EdgeInsets.all(40.0),
            child: TextFormField(
              onFieldSubmitted: (value) {

                HttpBid.BidTicket(price: BidControllerr.text);

              },
              controller: BidControllerr,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: '10000 LE',
                prefixIcon: Icon(Icons.attach_money_outlined,color: Colors.green),
                labelText: 'Please Place your Bid now',
                prefixIconColor: Colors.green,
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(right: 20.0),
            child: GetBuilder<BidController>(
              init: BidController(),
              builder: (controller) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                      Text('Bid starting from :',style: TextStyle(fontSize: 25,fontWeight:FontWeight.w700 ),),
                    SizedBox(width: 5,),
                    Text('150',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 25),),
                    Text(' LE',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400),)
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
