class Car implements Comparable<Car> {
  late String name;
  late String type;
  late String media;
  late String price;
  late String category;
  bool isLiked = false;
  bool isInCard = false;
  
  Car({required this.name, required this.type, required this.media, required this.price, required this.category});

  @override
  bool operator == (other) {
    return (other is Car) && other.category == category;
  }

  @override
  int compareTo(Car other) {
    return category.compareTo(other.category);
  }
}