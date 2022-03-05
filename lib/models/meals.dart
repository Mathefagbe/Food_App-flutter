class MealsItem {
  final String imageUrl;
  final String Name;
  final String price;
  final String description;

  const MealsItem(
      {required this.imageUrl,
      required this.Name,
      required this.price,
      required this.description});
}

List<MealsItem> meal = const [
  MealsItem(
      imageUrl: 'assets/images/Abacha.jpg',
      Name: "Abacha",
      price: "N 1,200",
      description:
          "Abacha is an Eastern Nigeria dish made using dried, shredded cassava. You can eat it as a snack or a full meal. There are many variations to making this salad, but the more ingredients you add, the tastier the dish is. Whichever way you prepare or eat it, warm or cold, it will still come out delicious."),
  MealsItem(
      imageUrl: 'assets/images/plantain.jpg',
      Name: "fried meat",
      price: "N 1,400",
      description:
          "frying, the cooking of food in hot fats or oils, usually done with a shallow oil bath in a pan over a fire or as so-called deep fat frying, in which the food is completely immersed in a deeper vessel of hot oil.."),
  MealsItem(
      imageUrl: 'assets/images/fried.jpeg',
      Name: "ofada rice",
      price: "N 1,100",
      description:
          "Ofada rice is a popular Nigerian rice variety. It is also called Unpolished rice as it is rice in it's natural state and without genetic modification. It is very healthy and much more healthier than white rice and is identified as Brown rice.."),
  MealsItem(
    imageUrl: 'assets/images/white rice.jpg',
    Name: "white rice",
    price: "N 1,000",
    description:
        "White rice is milled rice that has had its husk, bran, and germ removed. This alters the flavor, texture and appearance of the rice and helps prevent spoilage, extend its storage life, and makes it easier to digest..",
  ),
  MealsItem(
    imageUrl: 'assets/images/meat with onions.jpg',
    Name: "turkey",
    price: "N 2,000",
    description:
        "turkey (Gallus domesticus) are domestic birds that cannot fly. There are over 150 different breeds of chicken that come in various colours, patterns and sizes.",
  ),
  MealsItem(
    imageUrl: 'assets/images/noodles.jpeg',
    Name: "fired rice",
    price: "N 600",
    description:
        "fried rice (Gallus domesticus) are domestic birds that cannot fly. There are over 150 different breeds of chicken that come in various colours, patterns and sizes.",
  ),
  MealsItem(
    imageUrl: 'assets/images/chicken.jpeg',
    Name: "chicken",
    price: "N 1,200",
    description:
        "chicken (Gallus domesticus) are domestic birds that cannot fly. There are over 150 different breeds of chicken that come in various colours, patterns and sizes.",
  ),
];
