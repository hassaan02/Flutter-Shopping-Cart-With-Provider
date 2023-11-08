class Cart {
  late final int? id;
  final String? productID;
  final String? productName;
  final int? initialPrice;
  final int? productprice;
  final int? productQuantity;
  final String? unitTag;
  final String? productImage;

  Cart({
    required this.id,
    required this.productID,
    required this.productName,
    required this.initialPrice,
    required this.productprice,
    required this.productQuantity,
    required this.unitTag,
    required this.productImage,
  });

  Cart.fromMap(Map<dynamic, dynamic> res)
      : id = res["id"],
        productID = res["Product ID"],
        productName = res["Product Name"],
        initialPrice = res["Initial Price"],
        productprice = res["Product Price"],
        productQuantity = res["Product Quantity"],
        unitTag = res["Unit Tag"],
        productImage = res["Product Image"];

  Map<String, Object?> toMap() {
    return {
      "id": id,
      "Product ID": productID,
      "Product Name": productName,
      "Initial Price": initialPrice,
      "Product Price": productprice,
      "Product Quantity": productQuantity,
      "Unit Tag": unitTag,
      "Product Image": productImage,
    };
  }
}
