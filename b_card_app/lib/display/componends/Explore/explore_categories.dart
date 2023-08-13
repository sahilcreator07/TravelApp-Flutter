import 'package:b_card_app/display/componends/Explore/exp_categories_card_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CategoriesList extends StatelessWidget {
  CategoriesList({required this.exploreNewPlaceDetails});
  final ExploreNewPlaceDetails exploreNewPlaceDetails;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8.0, right: 8),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ImageTile()));
            },
            child: Container(
                height: 40,
                width: 80,
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.grey),
                    borderRadius: BorderRadius.circular(20)),
                child: Center(child: Text(exploreNewPlaceDetails.name))),
          ),
        ],
      ),
    );
  }
}

class ExploreNewPlaceDetails {
  late String name;

  ExploreNewPlaceDetails({required this.name});
}

List<ExploreNewPlaceDetails> ExploreNewPlaceList = [
  ExploreNewPlaceDetails(name: "INDIA"),
  ExploreNewPlaceDetails(name: "SWIZ"),
  ExploreNewPlaceDetails(name: "ADINBURG"),
  ExploreNewPlaceDetails(name: "NYC"),
  ExploreNewPlaceDetails(name: "MALDIVES"),
  ExploreNewPlaceDetails(name: "EUROPE"),
  ExploreNewPlaceDetails(name: "JAPAN"),
];
