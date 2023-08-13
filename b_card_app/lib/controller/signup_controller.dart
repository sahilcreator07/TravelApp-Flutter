import 'package:get/get.dart';

class SignUpController extends GetxController {
  var isProfilePathSet = false.obs;
  var profilePicPath = "".obs;

  void setProfileImgPath(String path) {
    profilePicPath.value = path;
    isProfilePathSet.value = true;
  }
}
