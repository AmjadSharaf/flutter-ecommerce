class ProdactModel {
  final int id;
  final String name;
  final String description;
  final double price;
  final String imagesUrl;
  final double? discount;

  ProdactModel({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imagesUrl,
    this.discount,
  });
}
