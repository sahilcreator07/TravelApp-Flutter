// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';

// import '../product/productList.dart';

// class DisplayBusinessCardPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final BusinessCard businessCard = Get.arguments;

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Display Business Card'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Name: ${businessCard.name}',
//               style: TextStyle(fontSize: 18.0),
//             ),
//             Text(
//               'Job Title: ${businessCard.jobtitle}',
//               style: TextStyle(fontSize: 18.0),
//             ),
//             Text(
//               'Email: ${businessCard.description}',
//               style: TextStyle(fontSize: 18.0),
//             ),
//             Text(
//               'Email: ${businessCard.contactNum}',
//               style: TextStyle(fontSize: 18.0),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
