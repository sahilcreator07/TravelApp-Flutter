import 'package:get/get.dart';

import '../product/productList.dart';

class ShowCreatedCardController extends GetxController {
  List<BusinessCard> createdList = <BusinessCard>[].obs;
  RxInt currentPage = 0.obs;

  void displayAtHomeScreen(BusinessCard businessCard) {
    createdList.add(businessCard);
    print(createdList.length);
    print("added");
  }

  void setCurrentPage(int index) {
    currentPage.value = index;
  }
}
