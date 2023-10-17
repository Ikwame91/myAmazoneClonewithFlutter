class ProductModel {
  final String url;
  final String productName;
  final double cost;
  final int discount;
  final String seller;
  final String sellerUid;
  final int rating;
  final int noOfRating;

  ProductModel(
      {required this.url,
      required this.productName,
      required this.cost,
      required this.discount,
      required this.seller,
      required this.sellerUid,
      required this.rating,
      required this.noOfRating});
}
