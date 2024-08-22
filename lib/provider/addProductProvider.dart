import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddProductProvider extends ChangeNotifier {
  final ImagePicker picker = ImagePicker();

  List<String> images = [];
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
  }

  void addImage(String url) {
    if (images.length < 6) {
      images.add(url);
      notifyListeners();
    }
  }

  void removeImage(String url) {
    images.remove(url);
    notifyListeners();
  }

  Future<void> pickImage() async {
    if (images.length < 6) {
      var response = await picker.pickImage(source: ImageSource.gallery);
      if (response != null) {
        addImage(response.path);
      }
    }
  }
}
