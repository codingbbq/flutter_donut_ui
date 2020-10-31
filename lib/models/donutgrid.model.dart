class DonutGridModel {
  final String name;
  final String category;
  final num price;
  final num rating;
  final String details;
  final num ingSugar;
  final num ingSalt;
  final num ingFat;
  final num ingEnergy;
  final String img;

  DonutGridModel({
    this.name,
    this.category,
    this.price,
    this.rating,
    this.details,
    this.ingSugar,
    this.ingSalt,
    this.ingFat,
    this.ingEnergy,
    this.img,
  });
}

final DonutGridModel nutsCaramel = DonutGridModel(
  name: "Nuts Caramel",
  category: "Dunkin's",
  price: 36,
  rating: 3.8,
  details:
      "The Sweet and subtle salty combo of chocolate meets caramel. Introduce the caramel duo to your mouth!",
  ingSugar: 2,
  ingSalt: 0.3,
  ingFat: 12,
  ingEnergy: 40,
  img: "assets/images/donuts/1.png",
);

final DonutGridModel redVelvet = DonutGridModel(
  name: "Red Velvet",
  category: "Dunkin's",
  price: 36,
  rating: 3.8,
  details:
      "The Sweet and subtle salty combo of chocolate meets caramel. Introduce the caramel duo to your mouth!",
  ingSugar: 2,
  ingSalt: 0.3,
  ingFat: 12,
  ingEnergy: 40,
  img: "assets/images/donuts/2.png",
);

final DonutGridModel vanillaSprinkle = DonutGridModel(
  name: "Vanilla Sprinkle",
  category: "Dunkin's",
  price: 36,
  rating: 3.8,
  details:
      "The Sweet and subtle salty combo of chocolate meets caramel. Introduce the caramel duo to your mouth!",
  ingSugar: 2,
  ingSalt: 0.3,
  ingFat: 12,
  ingEnergy: 40,
  img: "assets/images/donuts/3.png",
);

final DonutGridModel coconutCake = DonutGridModel(
  name: "Coconut Cake",
  category: "Dunkin's",
  price: 36,
  rating: 3.8,
  details:
      "The Sweet and subtle salty combo of chocolate meets caramel. Introduce the caramel duo to your mouth!",
  ingSugar: 2,
  ingSalt: 0.3,
  ingFat: 12,
  ingEnergy: 40,
  img: "assets/images/donuts/4.png",
);

final List<DonutGridModel> donutList = [
  nutsCaramel,
  redVelvet,
  coconutCake,
  vanillaSprinkle,
  nutsCaramel,
  redVelvet,
  coconutCake,
  vanillaSprinkle,
];
