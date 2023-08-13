import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BusinessCard {
  final String name;
  final String country;
  // final String imagepath;
  final String story;

  BusinessCard({
    required this.name,
    required this.country,
    // required this.imagepath,
    required this.story,
  });
}

List<BusinessCard> cardList = [];
