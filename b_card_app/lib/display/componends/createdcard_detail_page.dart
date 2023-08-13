import 'dart:io';

import 'package:b_card_app/controller/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../controller/likecount.dart';
import '../../product/explore_lmage_list.dart';
import '../../product/productList.dart';

class YourCardDetailStoryPage extends StatefulWidget {
  YourCardDetailStoryPage({super.key, required this.businessCard});
  final BusinessCard businessCard;

  @override
  State<YourCardDetailStoryPage> createState() =>
      _YourCardDetailStoryPageState();
}

class _YourCardDetailStoryPageState extends State<YourCardDetailStoryPage> {
  final SignUpController signUpController = Get.find();
  final LikeCountController likeCountController =
      Get.put(LikeCountController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 1.8,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: signUpController.isProfilePathSet.value == true
                        ? FileImage(File(signUpController.profilePicPath.value))
                            as ImageProvider
                        : AssetImage("assets/travel2.jpg"),
                    fit: BoxFit.cover),
              ),
            ),
            Positioned(
                bottom: 1,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 1.9,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 171, 49, 5),
                    ),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(padding: EdgeInsets.all(10)),
                        Text(
                          '${widget.businessCard.name} | ${widget.businessCard.country}',
                          style: GoogleFonts.cinzel(
                              fontSize: 30,
                              color: Colors.yellow,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Padding(padding: EdgeInsets.all(10)),
                              Obx(
                                () => IconButton(
                                  icon: Icon(
                                    Icons.favorite,
                                    size: 30,
                                    color:
                                        likeCountController.likeCount.value > 0
                                            ? Colors.red
                                            : Colors.white,
                                  ),
                                  onPressed: () {
                                    if (likeCountController.likeCount.value >
                                        0) {
                                      likeCountController.decrementLikes();
                                    } else {
                                      likeCountController.incrementLikes();
                                    }
                                  },
                                ),
                              ),

                              Icon(
                                Icons.shopping_basket_outlined,
                                size: 30,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: ListView(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 12.0, right: 12),
                                child: Container(
                                  height: 600,
                                  width:
                                      MediaQuery.of(context).size.width / 1.1,
                                  decoration: BoxDecoration(
                                      color: Colors.teal,
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: const [
                                            Text("STORY,",
                                                style: TextStyle(
                                                    fontFamily: 'cinzel',
                                                    fontSize: 20)),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        Text(
                                          widget.businessCard.story,
                                          style: TextStyle(fontSize: 20),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
