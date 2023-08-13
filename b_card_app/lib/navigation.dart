import 'package:b_card_app/display/create_new_card.dart';
import 'package:b_card_app/display/homescreen_page.dart';
import 'package:b_card_app/product/productList.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'controller/created_card_in_home.dart';
import 'display/dashboard.dart';

class AnimatedBottomNavigationBar extends StatefulWidget {
  @override
  _AnimatedBottomNavigationBarState createState() =>
      _AnimatedBottomNavigationBarState();
}

class _AnimatedBottomNavigationBarState
    extends State<AnimatedBottomNavigationBar> {
  final List<Widget> _pages = [
    HomePageScreen(BusinessCard(name: '', story: '', country: '')),
    CreateNewCard(),
    ProfileScreen()
    // HomePageScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final pageController = Get.put(ShowCreatedCardController());

    return Scaffold(
        body: Obx(() => _pages[pageController.currentPage.value]),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(color: Colors.black),
          padding: EdgeInsets.all(15),
          child: GNav(
              rippleColor: Colors.black, // tab button ripple color when pressed
              hoverColor: Colors.black, // tab button hover color
              haptic: true, // haptic feedback
              tabBorderRadius: 15,
              tabActiveBorder: Border.all(
                  color: Colors.black, width: 1), // tab button border
              // tab button border
              // tab button shadow
              curve: Curves.easeOutExpo, // tab animation curves
              duration: Duration(milliseconds: 900), // tab animation duration
              gap: 8, // the tab button gap between icon and text
              color: Colors.pink, // unselected icon color
              activeColor: Colors.white, // selected icon and text color
              iconSize: 24, // tab button icon size
              tabBackgroundColor: Colors.white
                  .withOpacity(0.1), // selected tab background color
              padding: EdgeInsets.symmetric(
                  horizontal: 20, vertical: 5), // navigation bar padding
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                  onPressed: () {
                    pageController.setCurrentPage(0);
                  },
                ),
                GButton(
                  icon: Icons.add,
                  iconSize: 30,
                  text: 'CREATE',
                  onPressed: () {
                    pageController.setCurrentPage(1);
                  },
                ),
                GButton(
                  icon: Icons.person,
                  text: 'Profile',
                  onPressed: () {
                    setState(() {
                      pageController.setCurrentPage(2);
                    });
                  },
                ),
              ]),
        ));
  }
}
