import 'package:flutter/material.dart';

import 'package:expense_tracker/widgets/expenses_list/expense_item.dart';
import 'package:expense_tracker/models/expense.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key,
    required this.expenses,
    required this.onRemoveExpense,
  });

  final List<Expense> expenses;
  final void Function(Expense expense) onRemoveExpense;

  @override
Widget build(BuildContext context) {
  return ListView.builder(
    itemCount: expenses.length,
    itemBuilder: (ctx, index) => Dismissible(
      key: ValueKey(expenses[index]),
      direction: DismissDirection.endToStart, // Swiping from right to left
      onDismissed: (direction) {
        onRemoveExpense(expenses[index]);
      },
      background: Container(
        color: Colors.red.withOpacity(0.8),
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: const Icon(
          Icons.delete,
          color: Colors.white,
          size: 30,
        ),
      ),
      child: ExpenseItem(
        expenses[index],
      ),
    ),
  );
}

}