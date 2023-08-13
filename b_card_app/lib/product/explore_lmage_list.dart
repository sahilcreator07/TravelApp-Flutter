import 'package:flutter/material.dart';

class ImageListDetails {
  late final String location;
  late final String countryname;
  late final String imgpath;

  ImageListDetails({
    required this.location,
    required this.countryname,
    // required this.imagepath,
    required this.imgpath,
  });
}

List<ImageListDetails> imageList = [
  ImageListDetails(
    location: 'Zermatt',
    countryname: "SWIZ",
    imgpath: 'assets/travel7.jpg',
  ),
  ImageListDetails(
    location: 'NYC',
    countryname: "US",
    imgpath: 'assets/travel8.jpg',
  ),
  ImageListDetails(
    location: 'KASHMIR',
    countryname: "INDIA",
    imgpath: 'assets/travel2.jpg',
  ),
  ImageListDetails(
    location: 'DELHI',
    countryname: "INDIA",
    imgpath: 'assets/travel3.jpg',
  ),
  ImageListDetails(
    location: 'MILAN',
    countryname: "ITALY",
    imgpath: 'assets/travel4.jpg',
  ),
  ImageListDetails(
    location: 'AMALFI',
    countryname: "ITALY",
    imgpath: 'assets/travel5.jpg',
  ),
  ImageListDetails(
    location: 'M',
    countryname: "MALIDIVES",
    imgpath: 'assets/travel6.jpg',
  )
];
