class NewCartItemsModel {
  String productBrand;
  String productName;
  String imageUrl;
  double orgprice;
  double offprice;
  String discount;
  String? flpimageurl;
  String? supercoinurl;
  double? coin;
  double? finalvalue;

  NewCartItemsModel({
    required this.productBrand,
    required this.productName,
    required this.imageUrl,
    required this.offprice,
    required this.orgprice,
    required this.discount,
    this.flpimageurl,
    this.supercoinurl,
    this.coin,
    this.finalvalue,
  });
}
