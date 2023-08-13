// import 'package:b_card_app/product/productList.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../../controller/created_card_in_home.dart';

// class BeautifulButton extends StatefulWidget {
//   @override
//   _BeautifulButtonState createState() => _BeautifulButtonState();
// }

// class _BeautifulButtonState extends State<BeautifulButton> {
//   final ShowCreatedCard showCreatedCard = Get.put(ShowCreatedCard());
//   late final BusinessCard businessCard;
//   final TextEditingController nameController = TextEditingController();
//   final TextEditingController jobTitleController = TextEditingController();
//   final TextEditingController description = TextEditingController();
//   final TextEditingController contactinfo = TextEditingController();

//   Color _buttonColor = Colors.black;
//   bool _isPressed = false;

//   void _onTapDown(TapDownDetails details) {
//     setState(() {
//       _isPressed = true;
//     });
//   }

//   void _onTapUp(TapUpDetails details) {
//     setState(() {
//       _isPressed = false;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         final businessCard = BusinessCard(nameController.text,
//             jobTitleController.text, description.text, contactinfo.text);
//         Get.toNamed('/YourCardHomePage', arguments: businessCard);
//       },
//       onTapDown: _onTapDown,
//       onTapUp: _onTapUp,
//       child: AnimatedContainer(
//         duration: Duration(milliseconds: 300),
//         width: 150.0,
//         height: 40.0,
//         decoration: BoxDecoration(
//           color: _isPressed ? Colors.pink : _buttonColor,
//           borderRadius: BorderRadius.circular(25.0),
//         ),
//         child: Center(
//           child: AnimatedDefaultTextStyle(
//             duration: Duration(milliseconds: 300),
//             style: TextStyle(
//               fontSize: 18.0,
//               fontWeight: FontWeight.bold,
//               color: _isPressed ? _buttonColor : Colors.red,
//             ),
//             child: Text('CREATE'),
//           ),
//         ),
//       ),
//     );
//   }
// }
