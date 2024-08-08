import 'package:desh_mart/models/Product.dart';

var products = [
  Product(
    id: "1",
    name: "Mobile",
    category: "Electronics",
    averageRating: 0,
    createAt: "",
    description: "This is Mobile Phone",
    discount: 0.0,
    discountEndData: "",
    discountStartDate: "",
    images: [
      "https://www.google.com/imgres?q=mobile%20images&imgurl=https%3A%2F%2Fm.economictimes.com%2Fthumb%2Fmsid-98897778%2Cwidth-1200%2Cheight-1200%2Cresizemode-4%2Cimgsize-35708%2F6-latest-mobile-phones-with-12gb-ram-in-india.jpg&imgrefurl=https%3A%2F%2Fm.economictimes.com%2Ftop-trending-products%2Fmobile-phones%2F6-latest-mobile-phones-with-12gb-ram-in-india-in-2023-starting-at-rs-29999%2Farticleshow%2F98897903.cms&docid=WOn5Yb366RT0ZM&tbnid=JCGHtTtoazryxM&vet=12ahUKEwiU-8yo1oqHAxXtxDgGHUpdBDcQM3oECGUQAA..i&w=1200&h=1200&hcb=2&ved=2ahUKEwiU-8yo1oqHAxXtxDgGHUpdBDcQM3oECGUQAAzzz"
    ],
    isActive: true,
    purchasePrice: 12000,
    sellPrice: 15000,
    unit: "pic",
    reviews: [],
    stock: 12,
    supplier: "Ansh0078 Raj",
    tags: [
      "Mobile",
      "Electronics"
    ],
    unitPrice: 15999,
    updatedAt: "",
  ),
  Product(
    id: "2",
    name: "Laptop",
    category: "Electronics",
    averageRating: 4.5,
    createAt: "",
    description: "This is a high-performance laptop",
    discount: 10.0,
    discountEndData: "2023-12-31",
    discountStartDate: "2023-07-01",
    images: [
      "https://example.com/images/laptop.jpg"
    ],
    isActive: true,
    purchasePrice: 50000,
    sellPrice: 60000,
    unit: "pcs",
    reviews: [],
    stock: 5,
    supplier: "TechSupplier Inc",
    tags: [
      "Laptop",
      "Electronics"
    ],
    unitPrice: 65000,
    updatedAt: "",
  ),
  Product(
    id: "3",
    name: "Tablet",
    category: "Electronics",
    averageRating: 4.0,
    createAt: "",
    description: "This is a tablet",
    discount: 5.0,
    discountEndData: "2023-11-30",
    discountStartDate: "2023-08-01",
    images: [
      "https://example.com/images/tablet.jpg"
    ],
    isActive: true,
    purchasePrice: 20000,
    sellPrice: 25000,
    unit: "pcs",
    reviews: [],
    stock: 8,
    supplier: "GadgetWorld",
    tags: [
      "Tablet",
      "Electronics"
    ],
    unitPrice: 27000,
    updatedAt: "",
  ),
  Product(
    id: "4",
    name: "Smartwatch",
    category: "Electronics",
    averageRating: 4.2,
    createAt: "",
    description: "This is a smartwatch",
    discount: 15.0,
    discountEndData: "2023-10-31",
    discountStartDate: "2023-09-01",
    images: [
      "https://example.com/images/smartwatch.jpg"
    ],
    isActive: true,
    purchasePrice: 8000,
    sellPrice: 10000,
    unit: "pcs",
    reviews: [],
    stock: 20,
    supplier: "WatchWorld",
    tags: [
      "Smartwatch",
      "Electronics"
    ],
    unitPrice: 12000,
    updatedAt: "",
  ),
  Product(
    id: "5",
    name: "Headphones",
    category: "Electronics",
    averageRating: 4.6,
    createAt: "",
    description: "This is a pair of headphones",
    discount: 20.0,
    discountEndData: "2023-09-30",
    discountStartDate: "2023-07-15",
    images: [
      "https://example.com/images/headphones.jpg"
    ],
    isActive: true,
    purchasePrice: 3000,
    sellPrice: 4000,
    unit: "pcs",
    reviews: [],
    stock: 15,
    supplier: "AudioSupplies",
    tags: [
      "Headphones",
      "Electronics"
    ],
    unitPrice: 4500,
    updatedAt: "",
  ),
  Product(
    id: "6",
    name: "Camera",
    category: "Electronics",
    averageRating: 4.8,
    createAt: "",
    description: "This is a digital camera",
    discount: 25.0,
    discountEndData: "2023-12-15",
    discountStartDate: "2023-09-01",
    images: [
      "https://example.com/images/camera.jpg"
    ],
    isActive: true,
    purchasePrice: 35000,
    sellPrice: 45000,
    unit: "pcs",
    reviews: [],
    stock: 10,
    supplier: "CameraCorp",
    tags: [
      "Camera",
      "Electronics"
    ],
    unitPrice: 50000,
    updatedAt: "",
  ),
  Product(
    id: "7",
    name: "Speaker",
    category: "Electronics",
    averageRating: 4.3,
    createAt: "",
    description: "This is a Bluetooth speaker",
    discount: 18.0,
    discountEndData: "2023-11-15",
    discountStartDate: "2023-07-01",
    images: [
      "https://example.com/images/speaker.jpg"
    ],
    isActive: true,
    purchasePrice: 5000,
    sellPrice: 7000,
    unit: "pcs",
    reviews: [],
    stock: 25,
    supplier: "SoundTech",
    tags: [
      "Speaker",
      "Electronics"
    ],
    unitPrice: 7500,
    updatedAt: "",
  ),
  Product(
    id: "8",
    name: "Smart TV",
    category: "Electronics",
    averageRating: 4.7,
    createAt: "",
    description: "This is a smart TV",
    discount: 12.0,
    discountEndData: "2023-12-31",
    discountStartDate: "2023-10-01",
    images: [
      "https://example.com/images/smarttv.jpg"
    ],
    isActive: true,
    purchasePrice: 60000,
    sellPrice: 70000,
    unit: "pcs",
    reviews: [],
    stock: 7,
    supplier: "HomeTech",
    tags: [
      "Smart TV",
      "Electronics"
    ],
    unitPrice: 75000,
    updatedAt: "",
  ),
  Product(
      id: "9",
      name: "Gaming Console",
      category: "Electronics",
      averageRating: 4.9,
      createAt: "",
      description: "This is a gaming console",
      discount: 8.0,
      discountEndData: "2023-12-01",
      discountStartDate: "2023-09-01",
      images: [
        "https://example.com/images/console.jpg"
      ],
      isActive: true,
      purchasePrice: 30000,
      sellPrice: 35000,
      unit: "pcs",
      reviews: [],
      stock: 9,
      supplier: "GameZone",
      tags: [
        "Gaming Console",
        "Electronics"
      ],
      unitPrice: 38000,
      updatedAt: ""),
  Product(
    id: "10",
    name: "VR Headset",
    category: "Electronics",
    averageRating: 4.4,
    createAt: "",
    description: "This is a VR headset",
    discount: 10.0,
    discountEndData: "2023-12-31",
    discountStartDate: "2023-07-01",
    images: [
      "https://example.com/images/vr.jpg"
    ],
    isActive: true,
    purchasePrice: 15000,
    sellPrice: 18000,
    unit: "pcs",
    reviews: [],
    stock: 12,
    supplier: "VirtualTech",
    tags: [
      "VR Headset",
      "Electronics"
    ],
    unitPrice: 20000,
    updatedAt: "",
  ),
];
