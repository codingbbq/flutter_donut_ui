class DonutGridModel {
  final int id;
  final String name;
  final String category;
  final num price;
  final num rating;
  final String details;
  final List<IngredientStats> ingredients;
  final String img;

  DonutGridModel({
    this.id,
    this.name,
    this.category,
    this.price,
    this.rating,
    this.details,
    this.ingredients,
    this.img,
  });
}

class IngredientStats {
  final String name;
  final num value;

  IngredientStats({
    this.name,
    this.value,
  });
}

final List<IngredientStats> nutsCaramerIngredients = [
  IngredientStats(name: "Sugar", value: 2),
  IngredientStats(name: "Salt", value: 0.3),
  IngredientStats(name: "Fat", value: 12),
  IngredientStats(name: "Energy", value: 40),
];

final DonutGridModel nutsCaramel = DonutGridModel(
  id: 1,
  name: "Nuts Caramel",
  category: "Dunkin's",
  price: 36,
  rating: 3.8,
  details:
      "The Sweet and subtle salty combo of chocolate meets caramel. Introduce the caramel duo to your mouth!",
  ingredients: nutsCaramerIngredients,
  img: "assets/images/donuts/1.png",
);

final List<IngredientStats> redVelvetIngredients = [
  IngredientStats(name: "Sugar", value: 2),
  IngredientStats(name: "Salt", value: 0.3),
  IngredientStats(name: "Fat", value: 12),
  IngredientStats(name: "Energy", value: 40),
];

final DonutGridModel redVelvet = DonutGridModel(
  id: 2,
  name: "Red Velvet",
  category: "Dunkin's",
  price: 36,
  rating: 3.8,
  details:
      "The Sweet and subtle salty combo of chocolate meets caramel. Introduce the caramel duo to your mouth!",
  ingredients: redVelvetIngredients,
  img: "assets/images/donuts/2.png",
);

final List<IngredientStats> vanillaSprinkleIngredients = [
  IngredientStats(name: "Sugar", value: 2),
  IngredientStats(name: "Salt", value: 0.3),
  IngredientStats(name: "Fat", value: 12),
  IngredientStats(name: "Energy", value: 40),
];

final DonutGridModel vanillaSprinkle = DonutGridModel(
  id: 3,
  name: "Vanilla Sprinkle",
  category: "Dunkin's",
  price: 36,
  rating: 3.8,
  details:
      "The Sweet and subtle salty combo of chocolate meets caramel. Introduce the caramel duo to your mouth!",
  ingredients: vanillaSprinkleIngredients,
  img: "assets/images/donuts/3.png",
);

final List<IngredientStats> coconutCakeIngredients = [
  IngredientStats(name: "Sugar", value: 2),
  IngredientStats(name: "Salt", value: 0.3),
  IngredientStats(name: "Fat", value: 12),
  IngredientStats(name: "Energy", value: 40),
];

final DonutGridModel coconutCake = DonutGridModel(
  id: 4,
  name: "Coconut Cake",
  category: "Dunkin's",
  price: 36,
  rating: 3.8,
  details:
      "The Sweet and subtle salty combo of chocolate meets caramel. Introduce the caramel duo to your mouth!",
  ingredients: coconutCakeIngredients,
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
