class MenuModel {
  final int id;
  final String name;
  final String currency;
  final double price;
  final int categoryId;

  const MenuModel({
    required this.id,
    required this.name,
    required this.currency,
    required this.price,
    required this.categoryId,
  });

  factory MenuModel.fromMap(Map<String, dynamic> map) {
    return MenuModel(
      id: map['id'] as int,
      name: map['name'] as String,
      currency: map['currency'] as String,
      price: map['price'] as double,
      categoryId: map['categoryId'] as int,
    );
  }

  @override
  int get hashCode => Object.hashAll(
        [id, name, currency, price, categoryId],
      );

  @override
  bool operator ==(Object other) {
    return identical(this, other) || other is MenuModel && other.id == id;
  }
}
