class CategoryModel {
  final int id;
  final String name;
  final String description;

  const CategoryModel({
    required this.id,
    required this.name,
    required this.description,
  });

  factory CategoryModel.fromMap(Map<String, dynamic> map) {
    return CategoryModel(
      id: map['id'] as int,
      name: map['name'] as String,
      description: map['description'] as String,
    );
  }
}
