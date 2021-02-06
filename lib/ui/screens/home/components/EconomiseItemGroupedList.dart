import 'package:economise_app/services/models/ExpenseItem.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';

class GroupedExpenseItemList extends StatelessWidget {
  final List<ExpenseItem> items;

  GroupedExpenseItemList(this.items);

  @override
  Widget build(BuildContext context) {
    return GroupedListView(
      elements: items,
      groupBy: (ExpenseItem item) =>
          DateTime(item.date.year, item.date.month, item.date.day),
      groupSeparatorBuilder: (DateTime date) => ExpenseItemGroupSeparator(date),
      order: GroupedListOrder.DESC,
      itemBuilder: (BuildContext context, ExpenseItem item) => Card(
        child: ListTile(
          title: Text(item.title),
          subtitle: Text(
            item.category,
            style: TextStyle(
              color: Colors.black.withOpacity(0.4),
            ),
          ),
          trailing: Text(
            item.cost,
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}

class ExpenseItemGroupSeparator extends StatelessWidget {
  final DateTime date;

  ExpenseItemGroupSeparator(this.date);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 16, top: 8, bottom: 8),
        child: Text("${this.date.day}.${this.date.month}.${this.date.year}",
            style: TextStyle(fontWeight: FontWeight.bold)),
      ),
    );
  }
}
