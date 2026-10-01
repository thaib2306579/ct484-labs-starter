class Product {
  final String? id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  final bool isFavorite;
  final List<String> sizes;
  final List<int> colors; // Lưu mã màu ARGB (hoặc int)

  Product({
    this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.imageUrl,
    this.isFavorite = false,
    this.sizes = const ['S', 'M', 'L', 'XL'],
    this.colors = const [0xFFF44336, 0xFF2196F3, 0xFF4CAF50, 0xFF000000],
  });

  Product copyWith({
    String? id,
    String? title,
    String? description,
    double? price,
    String? imageUrl,
    bool? isFavorite,
    List<String>? sizes,
    List<int>? colors,
  }) {
    return Product(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      price: price ?? this.price,
      imageUrl: imageUrl ?? this.imageUrl,
      isFavorite: isFavorite ?? this.isFavorite,
      sizes: sizes ?? this.sizes,
      colors: colors ?? this.colors,
    );
  }
}