import 'dart:typed_data';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:desh_mart/models/Product.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:uuid/uuid.dart';

class AddProductProvider extends ChangeNotifier {
  final ImagePicker picker = ImagePicker();
  final db = FirebaseStorage.instance;
  final database = FirebaseFirestore.instance;
  final uuid = Uuid();
  bool isLoading = false;

  List<Uint8List> images = [];
  TextEditingController name = TextEditingController();
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
    print("Product Name: ${name.text}");
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
    // uploadImages(images, "product");
  }

  Future<void> addProduct() async {
    isLoading = true;
    notifyListeners();
    String id = uuid.v4();
    List<String> urls = await uploadImages(images, "product");
    Product newProduct = Product(
      id: id,
      name: name.text,
      description: description.text,
      purchasePrice: double.parse(purchasePrice.text),
      sellPrice: double.parse(sellPrice.text),
      discount: double.parse(discountPrice.text),
      images: urls,
      category: selectedCategory,
      subCategory: selectedSubCategory,
      unitType: selectedUnitType,
      unit: selectedUnit,
      stock: double.parse(stock.text),
      averageRating: 0,
    );
    try {
      await database.collection("products").doc(id).set(newProduct.toJson());
      print("Product added successfully");
      clearAllFields();
    } catch (e) {
      print("Failed to add product: $e");
    }
    isLoading = false;
    notifyListeners();
  }

  void clearAllFields() {
    name.clear();
    description.clear();
    purchasePrice.clear();
    sellPrice.clear();
    discountPrice.clear();
    stock.clear();
    tags.clear();
    selectedCategory = "";
    selectedSubCategory = "";
    selectedUnitType = "";
    selectedUnit = "";
    images = [];
    notifyListeners();
  }

  Future<List<String>> uploadImages(List<Uint8List> images, String folderName) async {
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
    return imageUrls;
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
