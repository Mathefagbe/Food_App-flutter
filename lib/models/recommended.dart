class RecommendSlides {
  final String imageurl;
  final String name;
  final String price;
  const RecommendSlides(
      {required this.imageurl, required this.name, required this.price});
}

List<RecommendSlides> Recommend = const [
  RecommendSlides(
      imageurl: "assets/images/chicken.jpg",
      name: "roasted chicken",
      price: "N 1300"),
  RecommendSlides(
      imageurl: "assets/images/rice.jpeg",
      name: "fried planatain",
      price: "800"),
  RecommendSlides(
    imageurl: "assets/images/burga.jpg",
    name: "Burga",
    price: "N 1500",
  ),
  RecommendSlides(
      imageurl: "assets/images/peper soup.jpg",
      name: "peper soup",
      price: "N 1000")
];
