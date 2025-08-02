import 'package:flutter/material.dart';
import 'package:shopping_list/data/dummy_items.dart';

import 'package:flutter/material.dart';

// Assuming you have a list of grocery items defined somewhere
// final List<GroceryItem> groceryItems = [...];

class GroceryList extends StatelessWidget {
  const GroceryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grocery List'),
      ),
      body: ListView.builder(
        itemCount: groceryItems.length,
        itemBuilder: (ctx, index) {
          final item = groceryItems[index];

          return ListTile(
            title: Text(item.name),
            leading: Container(
              width: 24,
              height: 24,
              color: item.category.color,
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(item.description ?? 'No description'),
                const SizedBox(width: 8),
                Text(item.quantity?.toString() ?? '0'),
              ],
            ),
          );
        },
      ),
    );
  }
}
