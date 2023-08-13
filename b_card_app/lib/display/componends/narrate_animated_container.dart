// import 'package:animated_text_kit/animated_text_kit.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';

// class TypeWritterText extends StatefulWidget {
//   const TypeWritterText({super.key});

//   @override
//   State<TypeWritterText> createState() => _TypeWritterTextState();
// }

// class _TypeWritterTextState extends State<TypeWritterText> {
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: 250.0,
//       child: DefaultTextStyle(
//         style: const TextStyle(
//           fontSize: 20.0,
//           fontFamily: 'Agne',
//         ),
//         child: AnimatedTextKit(
//           animatedTexts: [
//             TypewriterAnimatedText('Explore The World',
//                 speed: Duration(milliseconds: 200)),
//             TypewriterAnimatedText('Narrate Your Story',
//                 speed: Duration(milliseconds: 200)),
//           ],
//           onTap: () {
//             print("Tap Event");
//           },
//         ),
//       ),
//     );
//   }
// }
