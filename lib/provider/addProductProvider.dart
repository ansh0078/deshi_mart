import 'dart:typed_data';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:uuid/uuid.dart';

class AddProductProvider extends ChangeNotifier {
  final ImagePicker picker = ImagePicker();
  final db = FirebaseStorage.instance;
  final uuid = Uuid();

  List<Uint8List> images = [];
  TextEditingController productName = TextEditingController();
  TextEditingController description = TextEditingController();
  TextEditingController purchasePrice = TextEditingController();
  TextEditingController sellPrice = TextEditingController();
  TextEditingController discountPrice = TextEditingController();
  TextEditingController stock = TextEditingController();
  TextEditingController tags = TextEditingController();

  String selectedCategory = "";
  String selectedSubCategory = "";
  String selectedUnitType = "";
  String selectedUnit = "";

  void printProduct() {
    print("Product Name: ${productName.text}");
    print("Description: ${description.text}");
    print("Purchase Price: ${purchasePrice.text}");
    print("Sell Price: ${sellPrice.text}");
    print("Discount Price: ${discountPrice.text}");
    print("Stock: ${stock.text}");
    print("Tags: ${tags.text}");
    print("Selected Category: $selectedCategory");
    print("Selected Sub Category: $selectedSubCategory");
    print("Selected Unit Type: $selectedUnitType");
    print("Selected Unit: $selectedUnit");
    uploadImages(images, "product");
  }

  void uploadImages(List<Uint8List> images, String folderName) async {
    List<String> imageUrls = [];
    for (var image in images) {
      var imageId = "${uuid.v4()}.jpg";
      var imageRef = db.ref(folderName);
      try {
        await imageRef.child(imageId).putData(image);
        String downloadUrl = await imageRef.child(imageId).getDownloadURL();
        imageUrls.add(downloadUrl);
        print("Image Uploaded successfully: $downloadUrl");
      } catch (e) {
        print("Failed to upload image: $e");
      }
    }
    print("All Image URLs: $imageUrls");
  }

  void addImage(Uint8List imageData) {
    if (images.length < 6) {
      images.add(imageData);
      notifyListeners();
    }
  }

  void removeImage(Uint8List imageData) {
    images.remove(imageData);
    notifyListeners();
  }

  Future<void> pickImage() async {
    if (images.length < 6) {
      var response = await picker.pickImage(source: ImageSource.gallery);
      if (response != null) {
        var imageData = await response.readAsBytes();
        addImage(imageData);
      }
    }
  }
}
