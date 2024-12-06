class ModelProduct {
  int? id;
  String? name;
  String? description;
  int? categoryId;
  String? categoryName;
  String? iceHot;
  double? price;
  double? star;
  int? sold;
  String? image;

  ModelProduct({
    this.id,
    this.name,
    this.description,
    this.categoryId,
    this.categoryName,
    this.iceHot,
    this.price,
    this.star,
    this.sold,
    this.image
  });
}

List listProducts = [
  ModelProduct(
    id: 1,
    name: 'Caffe Mocca',
    categoryName: 'Deep Foam',
    description: 'A cappuccino is an approximately 150 ml (5 oz) beverage',
    iceHot: 'Ice/Hot',
    price: 4.53,
    star: 4.8,
    sold: 230,
    image: 'assets/images/caffe-mocha.png'
  ),
  ModelProduct(
      id: 2,
      name: 'Flat White',
      categoryName: 'Espresso',
      description: 'Espresso Flat White',
      iceHot: 'Ice/Hot',
      price: 3.53,
      star: 4.8,
      sold: 230,
      image: 'assets/images/flat-white.png'
  ),
  ModelProduct(
      id: 3,
      name: 'Flat White',
      categoryName: 'Espresso',
      description: 'Espresso Flat White',
      iceHot: 'Ice/Hot',
      price: 3.53,
      star: 4.8,
      sold: 230,
      image: 'assets/images/flat-white.png'
  ),
];
