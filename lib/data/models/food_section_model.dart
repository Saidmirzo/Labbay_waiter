class FoodSectionModel {
  String imagePath;
  String sectionName;
  String foodAmount;
  FoodSectionModel({
    required this.imagePath,
    required this.sectionName,
    required this.foodAmount,
  });
}

class BasketModel {
  BasketModel({
    required this.title,
    required this.cost,
    required this.count,
    required this.path,
  });
  final String title;
  final int cost;
  final int count;
  final String path;
}
