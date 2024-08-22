import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddProductProvider extends ChangeNotifier {
  final ImagePicker picker = ImagePicker();

  Future<void> pickImage() async {
    var response = await picker.pickImage(source: ImageSource.gallery);
    print(response?.path);
  }
}
