import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testapp/view/paymentScreen.dart';
import '../controller/subscription_controller.dart';

class Subscription_merchant extends StatelessWidget {
  String imageAddress;
  String text;
  bool ispaypal;
  Subscription_merchant(
      {required this.imageAddress,
      required this.text,
      required this.ispaypal,
      super.key});

  @override
  Widget build(BuildContext context) {
    double deviceheight = MediaQuery.of(context).size.height;
    double devicewidth = MediaQuery.of(context).size.width;
    return Container(
        height: deviceheight * 0.28,
        width: devicewidth * 0.6,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(color: const Color(0xffEE863D), width: 1)),
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child: Image(image: AssetImage(imageAddress))),
            const SizedBox(
              height: 5,
            ),
            AutoSizeText(
              text,
              style: const TextStyle(color: Colors.black, fontSize: 16),
            ),
            const SizedBox(
              height: 20,
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  if (!ispaypal) {
                    Get.to(const PaymentScreen());
                  }
                  // await controller.subscribe();
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  alignment: Alignment.center,
                  height: 42,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(colors: [
                        Colors.orangeAccent,
                        Colors.orange,
                      ], stops: [
                        0.4,
                        0.6,
                      ], begin: Alignment.bottomLeft, end: Alignment.topRight),
                      borderRadius: BorderRadius.circular(6)),
                  child: const AutoSizeText(
                    'Pay Now',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w800),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
