import 'dart:io';

import 'package:b_card_app/display/componends/Explore/creadtedcard_List_homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'package:image_picker/image_picker.dart';

import '../controller/created_card_in_home.dart';
import '../controller/signup_controller.dart';
import '../product/productList.dart';
import 'componends/create_button.dart';
import 'homescreen_page.dart';

class CreateNewCard extends StatelessWidget {
  CreateNewCard({super.key});
  File? pickedFile;
  ImagePicker imagePicker = ImagePicker();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController jobTitleController = TextEditingController();
  final TextEditingController description = TextEditingController();

  // final TextEditingController imageController = ;

  SignUpController signUpController = Get.find();
  // final BusinessCard businessCard = Get.arguments;

  // final BusinessCard businessCard;

  @override
  Widget build(BuildContext context) {
    final showCreatedCard = Get.put(ShowCreatedCardController());
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 500,
              decoration: BoxDecoration(
                color: Colors.teal[500],

                borderRadius: BorderRadius.circular(20.0),
                // border: Border.all(width: 4, color: Colors.black),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Obx(() => Container(
                              width: 350,
                              height: 160,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(16, 245, 244, 244),
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                    image: signUpController
                                                .isProfilePathSet.value ==
                                            true
                                        ? FileImage(File(signUpController
                                            .profilePicPath
                                            .value)) as ImageProvider
                                        : AssetImage(
                                            "assets/addimg-removebg-preview.png"),
                                  )),
                            )),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              onTap: () {
                                print("tapped!");
                                showBottomSheet(
                                    context: context,
                                    builder: (context) => bottomSheet(context));
                              },
                              child: const Icon(
                                Icons.image,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        TextField(
                          controller: nameController,
                          decoration: InputDecoration(
                              labelText: 'PLACE',
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(width: 2))),
                        ),
                        const SizedBox(height: 10),
                        TextField(
                          controller: jobTitleController,
                          decoration: InputDecoration(
                              labelText: 'COUNTRY',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(width: 2))),
                        ),
                        const SizedBox(height: 10),
                        TextField(
                          controller: description,
                          decoration: InputDecoration(
                              labelText: 'STORY...',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(width: 2))),
                        ),
                        const SizedBox(height: 10),
                        // TextField(
                        //   controller: contactinfo,
                        //   decoration: InputDecoration(
                        //       labelText: 'Contact',
                        //       border: OutlineInputBorder(
                        //           borderRadius: BorderRadius.circular(20),
                        //           borderSide: BorderSide(width: 2))),
                        // ),
                        const SizedBox(height: 16.0),
                        // BeautifulButton(),
                        ElevatedButton(
                          onPressed: () {
                            showCreatedCard.displayAtHomeScreen(
                              BusinessCard(
                                story: description.text,
                                country: jobTitleController.text,
                                name: nameController.text,
                              ),
                            );
                            showCreatedCard.setCurrentPage(1);
                          },
                          child: Text('Create Card'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget bottomSheet(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.2,
      margin: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 10,
      ),
      child: Column(children: [
        const Text(
          "Choose Profile Photo",
          style: TextStyle(fontSize: 20),
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.image, color: Colors.purple),
                ],
              ),
              onTap: () {
                takePhoto(ImageSource.gallery);
              },
            ),
            const SizedBox(
              width: 50,
            ),
            InkWell(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.camera, color: Colors.purple),
                ],
              ),
              onTap: () {
                takePhoto(ImageSource.camera);
              },
            ),
          ],
        ),
      ]),
    );
  }

  Future<void> takePhoto(ImageSource source) async {
    final pickedImg =
        await imagePicker.pickImage(source: source, imageQuality: 100);

    pickedFile = File(pickedImg!.path);
    print(pickedImg);
    signUpController.setProfileImgPath(pickedFile!.path);
    Get.back();
  }
}
