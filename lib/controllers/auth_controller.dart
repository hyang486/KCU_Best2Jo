import 'dart:io';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:course2ignal/authenticationScreens/login_screen.dart';

class AuthenticationController extends GetxController {
  static AuthenticationController authController = Get.find();

  late Rx<File?> pickedFile;
  File? get profileImage => pickedFile.value;
  XFile? imageFile;

  pickedImageFromGallery() async {
    final imageFile = await ImagePicker().pickImage(source: ImageSource.gallery);

    if(imageFile != null) {
      Get.snackbar("Profile Image", "you have successfully updated your profile image. ");
    }

    pickedFile = Rx<File?>(File(imageFile!.path));
  }

  captureImageFromPhoneCam() async {
    final imageFile = await ImagePicker().pickImage(source: ImageSource.camera);

    if(imageFile != null) {
      Get.snackbar("Profile Image", "you have successfully updated your profile image. ");
    }

    pickedFile = Rx<File?>(File(imageFile!.path));
  }


}
