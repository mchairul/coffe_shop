class ModelCategoryButton {
  int? id;
  String? name;

  ModelCategoryButton({this.id,this.name});
}

List categoryList = [
  ModelCategoryButton(
    id: 0,
    name: 'All Coffee',
  ),
  ModelCategoryButton(
    id: 1,
    name: 'Machiato',
  ),
  ModelCategoryButton(
    id: 2,
    name: 'Latte',
  ),
  ModelCategoryButton(
    id: 3,
    name: 'Americano',
  ),
];