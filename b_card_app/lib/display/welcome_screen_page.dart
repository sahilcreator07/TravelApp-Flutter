import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:b_card_app/navigation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BackgroundPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              opacity: 0.7,
              image: AssetImage('assets/temple.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
            top: 250,
            left: 14,
            child: Text(
              "EXPLORE THE WORLD,",
              style: GoogleFonts.frankRuhlLibre(
                  fontSize: 30, color: Colors.yellow),
            )),
        Positioned(
            top: 290,
            left: 10,
            child: AnimatedTextKit(
              animatedTexts: [
                TyperAnimatedText(
                  " 'Narrate Your Story' ",
                  speed: Duration(milliseconds: 100),
                  textStyle: GoogleFonts.lobsterTwo(fontSize: 20),
                )
              ],
            )),
        Positioned(
          bottom: 350,
          left: 10,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AnimatedBottomNavigationBar()));
            },
            child: Container(
              height: 50,
              width: 130,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.pink,
                  border: Border.all(
                      width: 2, color: Color.fromARGB(137, 246, 235, 235))),
              child: Center(
                  child: Icon(
                Icons.arrow_forward,
                size: 30,
              )),
            ),
          ),
        )
      ]),
    );

    // child: Opacity(
    //   opacity: 0.7, // Adjust the opacity value as needed
    //   child: Center(
    //     child: Padding(
    //       padding: const EdgeInsets.only(left: 8.0),
    //       child: Text(
    //         'Your Content',
    //         style: TextStyle(
    //           fontSize: 24,
    //           fontWeight: FontWeight.bold,
    //           color: Colors.white,
    //         ),
    //       ),
    //     ),
    //   ),
    // ),
  }
}

// CarouselSlider(
//       items: _imageList.map((imagePath) {
//         return Container(
//           height: MediaQuery.of(context).size.height,
//           width: MediaQuery.of(context).size.width,
//           decoration: BoxDecoration(
//             image: DecorationImage(
//               image: AssetImage(imagePath),
//               // image: AssetImage('assets/liberty.jpg'),
//               fit: BoxFit.cover,
//             ),
//           ),
//         );
//       }).toList(),
//       options: CarouselOptions(
//           autoPlay: true,
//           autoPlayInterval: Duration(seconds: 2),
//           viewportFraction: 1.0,
//           enlargeCenterPage: false,
//           onPageChanged: (index, reason) {
//             setState(() {
//               _currentIndex = index;
//             });
//           }),
//     )