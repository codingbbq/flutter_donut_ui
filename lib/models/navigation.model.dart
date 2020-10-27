class NavigationModel {
  final String name;
  final String selectedImg;
  final String unselectedImg;

  NavigationModel({
    this.name,
    this.selectedImg,
    this.unselectedImg,
  });
}

final NavigationModel donuts = NavigationModel(
    name: "Donuts",
    selectedImg: "assets/images/navigation/donuts_selected.png",
    unselectedImg: "assets/images/navigation/donuts_unselected.png");

final NavigationModel burger = NavigationModel(
    name: "Burger",
    selectedImg: "assets/images/navigation/burger_selected.png",
    unselectedImg: "assets/images/navigation/burger_unselected.png");

final NavigationModel pancake = NavigationModel(
    name: "PanCakes",
    selectedImg: "assets/images/navigation/pancake_selected.png",
    unselectedImg: "assets/images/navigation/pancake_unselected.png");

final NavigationModel smothie = NavigationModel(
    name: "Smothie",
    selectedImg: "assets/images/navigation/smothie_selected.png",
    unselectedImg: "assets/images/navigation/smothie_unselected.png");

final NavigationModel pizza = NavigationModel(
    name: "Pizza",
    selectedImg: "assets/images/navigation/pizza_selected.png",
    unselectedImg: "assets/images/navigation/pizza_unselected.png");

List<NavigationModel> navigationList = [
  donuts,
  burger,
  pancake,
  smothie,
  pizza
];
