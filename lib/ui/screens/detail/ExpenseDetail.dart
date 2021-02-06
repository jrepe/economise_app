import 'package:flutter/material.dart';
import '../../../services/models/ExpenseItem.dart';
import 'components/ExpenseDetailBody.dart';

class ExpenseDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New expense"),
      ),
      body: ExpenseDetailBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context,
              ExpenseItem('Item', 'Category', 'Cost', new DateTime.now()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}