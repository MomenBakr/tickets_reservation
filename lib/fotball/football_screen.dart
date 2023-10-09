import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:tickets_reservation/modules/bid/bid_screen.dart';
import 'package:tickets_reservation/network/htttp_ticket.dart';

class FootballScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sports',style: TextStyle(color: Colors.white),
        ),centerTitle: true,backgroundColor: Colors.green,
      ),
      body: Padding(
        padding:  EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Ahly VS Zamalek',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                      Text('3-7-2023',style: TextStyle(color: Colors.grey),),
                      Text('8 PM',style: TextStyle(color: Colors.grey),),
                      Text('150 LE',style: TextStyle(color: Colors.grey),),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      TextButton(onPressed: (){
                        HttpTicket.BookTicket(name: 'Ahly VS Zamalek', date: '3-7-2023', time: '8 PM', price: '150 LE');
                      }, child: Text('Book Now',style: TextStyle(color: Colors.green),)),
                      //SizedBox(height: 7,),
                      TextButton(
                          onPressed: (){
                        Get.to(BidScreen());
                      }, child: Text('Bid on VIP',))
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 10,),
            Divider(color: Colors.black,thickness: 1,),

            SizedBox(height: 5,),

            Container(
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Etihad VS Ennpi',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                      Text('3-7-2023',style: TextStyle(color: Colors.grey),),
                      Text('9 PM',style: TextStyle(color: Colors.grey),),
                      Text('100 LE',style: TextStyle(color: Colors.grey),),
                    ],
                  ),
                  Spacer(),
                  TextButton(onPressed: (){
                    HttpTicket.BookTicket(name: 'Etihad VS Ennpi', date: '3-7-2023', time: '9 PM', price: '100 LE');
                  }, child: Text('Book Now',style: TextStyle(color: Colors.green),))
                ],
              ),
            ),
            SizedBox(height: 10,),
            Divider(color: Colors.black,thickness: 1,),
            SizedBox(height: 5,),


            Container(
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Pyramids VS Future',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                      Text('6-8-2023',style: TextStyle(color: Colors.grey),),
                      Text('7 PM',style: TextStyle(color: Colors.grey),),
                      Text('200 LE',style: TextStyle(color: Colors.grey),),
                    ],
                  ),
                  Spacer(),
                  TextButton(onPressed: (){
                    HttpTicket.BookTicket(name: 'Pyramids VS Future', date: '6-8-2023', time: '7 PM', price: '200 LE');
                  }, child: Text('Book Now',style: TextStyle(color: Colors.green),))
                ],
              ),
            ),
            SizedBox(height: 10,),
            Divider(color: Colors.black,thickness: 1,),

            SizedBox(height: 5,),
          ],
        ),
      ),
    );
  }
}
