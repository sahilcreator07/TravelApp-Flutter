import 'package:b_card_app/product/explore_lmage_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controller/created_card_in_home.dart';
import '../product/productList.dart';
import 'componends/Explore/creadtedcard_List_homepage.dart';
import 'componends/Explore/explore_cards.dart';
import 'componends/Explore/explore_categories.dart';
import 'componends/narrate_animated_container.dart';
import 'componends/story_container.dart';

class HomePageScreen extends StatelessWidget {
  final BusinessCard businessCard;

  HomePageScreen(this.businessCard);
  // late final BusinessCard businessCard = Get.arguments;
  // late final BusinessCard businessCard;
  @override
  Widget build(BuildContext context) {
    final showCreatedCard = Get.put(ShowCreatedCardController());
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 5.0, right: 5),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 10),
                  child: Row(
                    children: [
                      Text(
                        "SAFAR",
                        style: GoogleFonts.adventPro(
                            color: Colors.white,
                            fontSize: 20,
                            letterSpacing: 2),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                const SizedBox(
                  height: 40,
                  child: Text(
                    "EXPLORE",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  // decoration: BoxDecoration(color: Colors.red),
                  child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: ExploreNewPlaceList.map(
                          (exploreNewPlaceDetails) => CategoriesList(
                              exploreNewPlaceDetails:
                                  exploreNewPlaceDetails)).toList()),
                ),
                SizedBox(height: 15),
                Container(
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                  // color: Colors.red,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: imageList
                        .map((imageListDetails) => ExploreCards(
                              imageListDetails: imageListDetails,
                            ))
                        .toList(),
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Create Your Story",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width * 0.9,
                  // color: Colors.white,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: showCreatedCard.createdList.map((e) {
                      return StoriesCardContainer(
                        businessCard: e,
                      );
                    }).toList(),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
