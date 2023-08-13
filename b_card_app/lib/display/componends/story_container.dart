import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:page_transition/page_transition.dart';

import '../../controller/signup_controller.dart';
import '../../product/productList.dart';
import 'createdcard_detail_page.dart';

class StoriesCardContainer extends StatelessWidget {
  StoriesCardContainer({super.key, required this.businessCard});
  final BusinessCard businessCard;
  SignUpController signUpController = Get.find();
  File? pickedFile;
  ImagePicker imagePicker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            PageTransition(
                type: PageTransitionType.bottomToTopJoined,
                child: YourCardDetailStoryPage(
                  businessCard: businessCard,
                ),
                childCurrent: this));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40)),
              child: Container(
                height: 250,
                width: 320,
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 163, 64, 27)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Center(
                      child: Text(
                    '${businessCard.name} | ${businessCard.country}',
                    style: GoogleFonts.fahkwang(fontSize: 22),
                  )),
                ),
              ),
            ),
            Container(
              height: 120,
              width: 320,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 240, 115, 69),
                image: DecorationImage(
                    image:
                        FileImage(File(signUpController.profilePicPath.value))
                            as ImageProvider,
                    fit: BoxFit.cover),
              ),
            ),
            Positioned(
                bottom: 80,
                left: 10,
                child: Text(
                  'story : ${businessCard.story}',
                  style: GoogleFonts.fahkwang(fontSize: 15),
                ))
          ],
        ),
      ),
    );
  }
}
