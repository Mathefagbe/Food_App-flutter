class PopularMeal {
  final String imageurl;
  final String name;
  final String price;
  const PopularMeal(
      {required this.imageurl, required this.name, required this.price});
}

List<PopularMeal> popular = const [
  PopularMeal(
    imageurl: "assets/images/salad.jpeg",
    name: "Noodles",
    price: "N 800",
  ),
  PopularMeal(
    imageurl: "assets/images/meat.jpeg",
    name: "fried rice",
    price: "N 1,000",
  ),
  PopularMeal(
    imageurl: "assets/images/spicy.jpeg",
    name: "jollof rice",
    price: "N 700",
  ),
  PopularMeal(
    imageurl: "assets/images/dish sides.jpg",
    name: "plantain",
    price: "N 500",
  ),
  PopularMeal(
    imageurl: "assets/images/Abacha.jpg",
    name: "Nigeria salad",
    price: "N 600",
  ),
];
