import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LikeCountController extends GetxController {
  RxInt likeCount = 0.obs;

  void incrementLikes() {
    likeCount.value++;
  }

  void decrementLikes() {
    likeCount.value--;
  }
}
