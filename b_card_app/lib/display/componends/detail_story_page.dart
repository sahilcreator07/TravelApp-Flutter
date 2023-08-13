import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../product/explore_lmage_list.dart';
import '../../product/productList.dart';

class DetailStoryPage extends StatelessWidget {
  const DetailStoryPage({super.key, required this.imageListDetails});
  final ImageListDetails imageListDetails;

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
                      image: AssetImage(imageListDetails.imgpath),
                      fit: BoxFit.cover)),
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
                          '${imageListDetails.location}'
                          ' | '
                          '${imageListDetails.countryname}',
                          style: GoogleFonts.cinzel(
                              fontSize: 30,
                              color: Colors.yellow,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 1,
                        ),
                        Expanded(
                          child: ListView(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 12.0, right: 12),
                                child: Expanded(
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width / 1.1,
                                    decoration: BoxDecoration(
                                        color: Colors.teal,
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("STORY",
                                                  style: GoogleFonts.dosis(
                                                      fontSize: 25)),
                                              Icon(
                                                Icons.favorite_border,
                                                color: Colors.white,
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          Text(
                                            "City Of Dreams , Travelling, with all its wanderlust and adventures, has an inexplicable way of touching the depths of our emotions. It stirs a profound sense of awe as we witness breathtaking landscapes, majestic sunsets, and the vastness of the world. Each step we take in a foreign land is a moment of vulnerability, where we are confronted with the unknown and pushed outside our comfort zones. In these moments, we may feel a mix of excitement, fear, and anticipation that fuels our spirits and ignites a fire within It allows us to forge deeper connections with ourselves and the world, leaving imprints of laughter, tears, and profound reflections that will forever shape our souls.",
                                            style:
                                                GoogleFonts.dosis(fontSize: 25),
                                          )
                                        ],
                                      ),
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
