import 'package:b_card_app/display/componends/dashboard_menu_drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controller/created_card_in_home.dart';
import 'componends/story_container.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final showCreatedCard = Get.put(ShowCreatedCardController());
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.black,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MenuDrawer()));
              },
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('assets/travel1.jpg'),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Column(
                        children: const [
                          Text(
                            'Followers',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '100',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Column(
                        children: const [
                          Text(
                            'Following',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '150',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Sahil Gupta',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Photographer | Traveler',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 16.0),
                  SizedBox(height: 8.0),
                  Container(
                    height: 80,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 1,
                      itemBuilder: (BuildContext context, int index) {
                        return const Padding(
                          padding: EdgeInsets.only(right: 8.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 30,
                            backgroundImage: AssetImage(
                                'assets/addimg-removebg-preview.png'),
                          ),
                        );
                      },
                    ),
                  ),
                  const Text("Highlights"),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Padding(
                            padding: const EdgeInsets.only(left: 50.0),
                            child: Icon(Icons.image),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 50.0),
                            child: Icon(Icons.video_call),
                          ),
                        ],
                      )),
                  SizedBox(
                    height: 10,
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
          ],
        ),
      ),
    );
  }
}
