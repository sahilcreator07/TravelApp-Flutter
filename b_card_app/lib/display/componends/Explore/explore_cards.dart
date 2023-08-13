import 'package:b_card_app/display/componends/detail_story_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import '../../../product/explore_lmage_list.dart';

class ExploreCards extends StatelessWidget {
  const ExploreCards({required this.imageListDetails});
  final ImageListDetails imageListDetails;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.bottomToTopJoined,
                      child: DetailStoryPage(
                        imageListDetails: ImageListDetails(
                            location: imageListDetails.location,
                            countryname: imageListDetails.countryname,
                            imgpath: imageListDetails.imgpath),
                      ),
                      childCurrent: this));
            },
            child: ClipRRect(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40)),
              child: Container(
                height: 250,
                width: 320,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 163, 64, 27),
                    image: DecorationImage(
                        opacity: 0.7,
                        image: AssetImage(imageListDetails.imgpath),
                        fit: BoxFit.cover)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Center(
                      child: Text(
                    '${imageListDetails.location}'
                    ' | '
                    '${imageListDetails.countryname}',
                    style: GoogleFonts.cinzel(
                      fontSize: 15,
                    ),
                  )),
                ),
              ),
            ),
          ),
          // Positioned(

          //   child: Text(imageListDetails.countryname)),
          // Container(
          //   height: 120,
          //   width: 320,
          //   decoration: BoxDecoration(
          //       color: Color.fromARGB(255, 240, 115, 69),
          //       image: DecorationImage(
          //           image: AssetImage(imageListDetails.imgpath),
          //           fit: BoxFit.cover)),
          // ),
          // Positioned(
          //     bottom: 80,
          //     left: 10,
          //     child: Text(
          //       'story : ${imageListDetails.imgpath}',
          //       style: GoogleFonts.fahkwang(fontSize: 15),
          //     ))
        ],
      ),
    );
  }
}

                            
                          
// custom(
//       gridDelegate: SliverWovenGridDelegate.count(
//         crossAxisCount: 2,
//         mainAxisSpacing: 1,
//         crossAxisSpacing: 1,
//         pattern: [
//           WovenGridTile(1),
//           WovenGridTile(
//             6 / 9,
//             crossAxisRatio: 0.9,
//             alignment: AlignmentDirectional.centerEnd,
//           ),
//         ],
//       ),
//       childrenDelegate: SliverChildBuilderDelegate(
//         (context, index) => Padding(
//           padding: const EdgeInsets.all(10.0),
//           child: Container(
//             height: 300,
//             decoration: BoxDecoration(
//                 image:  DecorationImage(
//                     image: imageList, fit: BoxFit.fill),
//                 // image: DecorationImage(image: AssetImage(imageList as String)),
//                 borderRadius: BorderRadius.circular(25),
//                 color: Colors.purple
//                 // color: Colors.deepPurple,
//                 ),
//           ),
//         ),
//       ),
//     );