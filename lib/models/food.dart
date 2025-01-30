class Food {
  final String name;
  final String description;
  final String imagePath;
  final double price;
  final foodCategory category;
  List<Addon> availableAddon;

  Food({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
    required this.category,
    required this.availableAddon,
  });
}

// ignore: camel_case_types
enum foodCategory {
  Burgers,
  Salads,
  Sides,
  Desert,
  Drinks,
}

class Addon {
  String name;
  double price;

  Addon({
    required this.name,
    required this.price,
  });
}
