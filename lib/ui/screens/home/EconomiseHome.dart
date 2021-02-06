import 'package:economise_app/ui/screens/detail/ExpenseDetail.dart';
import 'package:economise_app/services/models/ExpenseItem.dart';
import 'package:economise_app/ui/screens/home/components/EconomiseHomeBody.dart';
import 'package:flutter/material.dart';

class EconomiseHome extends StatefulWidget {
  EconomiseHome({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _EconomiseHomeState createState() => _EconomiseHomeState();
}

class _EconomiseHomeState extends State<EconomiseHome> {
  final List<ExpenseItem> items = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        bottomOpacity: 0.0,
        elevation: 0.0,
      ),
      body: EconomiseHomeBody(items),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final ExpenseItem newItem = await Navigator.push(context,
              MaterialPageRoute(builder: (context) => ExpenseDetail()));
          setState(() {
            items.add(newItem);
          });
        },
        tooltip: 'Add expense',
        child: Icon(Icons.add),
      ),
      bottomNavigationBar:
          BottomNavigationBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart_rounded), label: "Analytics"),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Expenses"),
        BottomNavigationBarItem(icon: Icon(Icons.call_split), label: "Flow"),
      ]),
    );
  }
}
