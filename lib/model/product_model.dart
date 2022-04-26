/*
{
   "id":1,
   "title":"iPhone 9",
   "description":"An apple mobile which is nothing like apple",
   "price":549,
   "discountPercentage":12.96,
   "rating":4.69,
   "stock":94,
   "brand":"Apple",
   "category":"smartphones",
   "thumbnail":"https://dummyjson.com/image/i/products/1/thumbnail.jpg",
   "images":[
      "https://dummyjson.com/image/i/products/1/1.jpg",
      "https://dummyjson.com/image/i/products/1/2.jpg",
      "https://dummyjson.com/image/i/products/1/3.jpg",
      "https://dummyjson.com/image/i/products/1/4.jpg",
      "https://dummyjson.com/image/i/products/1/thumbnail.jpg"
   ]
}
 */

class Product {
  late int id;
  late String title;
  late String description;
  late int price;
  late double discountPercentage;
  late double rating;
  late int stock;
  late String brand;
  late String category;
  late String thumbnail;
  late List images;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.discountPercentage,
    required this.rating,
    required this.stock,
    required this.brand,
    required this.category,
    required this.thumbnail,
    required this.images,
  });

  Product.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    title = json["title"];
    description = json["description"];
    price = json["price"];
    discountPercentage = json["discountPercentage"];
    rating = json["rating"];
    stock = json["stock"];
    brand = json["brand"];
    category = json["category"];
    thumbnail = json["thumbnail"];
    images = json["images"];
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "description": description,
        "price": price,
        "discountPercentage": discountPercentage,
        "rating": rating,
        "stock": stock,
        "brand": brand,
        "category": category,
        "thumbnail": thumbnail,
        "images": images,
      };
}
