import 'package:shopping_list/model/catergory.dart';


class GroceryItem {
  const GroceryItem({
    required this.id,
    required this.name,
    required this.description,
    required this.quantity,
    required this.category,
  });

  final String id;
  final String name;
  final String description;
  final int quantity;
  final Category category;
}