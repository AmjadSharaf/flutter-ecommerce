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

  ProdactModel CopyWith({
    int? id,
    String? name,
    String? description,
    double? price,
    double? discount,
    String? imagesUrl,
  }) {
    return ProdactModel(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      price: price ?? this.price,
      discount: discount ?? this.discount,
      imagesUrl: imagesUrl ?? this.imagesUrl,
    );
  }
}
