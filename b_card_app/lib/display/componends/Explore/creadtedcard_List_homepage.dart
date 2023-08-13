import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../product/productList.dart';

class YourCardHomePage extends StatelessWidget {
  // late final BusinessCard businessCardList = Get.arguments;

  YourCardHomePage({required this.businessCard});
  final BusinessCard businessCard;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10.0,
      ),
      child: Container(
        margin: const EdgeInsets.all(15),
        width: 350,
        height: 300,
        decoration: BoxDecoration(
            image: const DecorationImage(
                image: AssetImage('assets/cardtemplatejpg.jpg'),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(35),
            border:
                Border.all(width: 2, color: Color.fromARGB(255, 241, 37, 101))
            // boxShadow: [
            //   BoxShadow(
            //     color: Colors.white.withOpacity(0.5),
            //     spreadRadius: 1,
            //     blurRadius: 1,
            //     offset: const Offset(1, 3),
            //   ),
            // ],
            ),
        child: Stack(
          children: [
            Positioned(
                top: 15,
                left: 10,
                child: Text(
                  'Name : ${businessCard.name}',
                  style: GoogleFonts.blinker(fontSize: 25),
                )),
            Positioned(
                top: 70,
                left: 10,
                child: Text(
                  'Business : ${businessCard.country}',
                  style: GoogleFonts.blinker(fontSize: 20),
                )),
            Positioned(
                top: 150,
                left: 10,
                child: Text('Description : \n${businessCard.story}',
                    style: GoogleFonts.blinker(fontSize: 20))),

            // Positioned(
            //     right: 15,
            //     top: 20,
            //     child: Container(
            //       width: 120,
            //       height: 150,
            //       decoration: BoxDecoration(
            //         color: Colors.red,
            //         // image: DecorationImage(
            //         //     image: AssetImage("${businessCard.imagepath}"))
            //       ),
            //     )),
            // Positioned(
            //   right: 0,
            //   bottom: 0,
            //   child: Container(
            //     width: 200,
            //     height: 40,
            //     decoration: const BoxDecoration(
            //         color: Color.fromARGB(255, 222, 209, 91),
            //         shape: BoxShape.rectangle,
            //         borderRadius: BorderRadius.only(
            //             topRight: Radius.circular(40),
            //             bottomRight: Radius.circular(40))),
            //     child: Padding(
            //       padding: const EdgeInsets.only(top: 10.0, left: 10),
            //       child: Text(
            //         'CONTACT: ${businessCard.contactNum} ',
            //         style: TextStyle(color: Colors.black),
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
