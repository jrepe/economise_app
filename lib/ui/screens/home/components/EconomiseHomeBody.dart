import 'dart:math';

import 'package:economise_app/services/models/ExpenseItem.dart';
import 'package:economise_app/ui/screens/home/components/EconomiseItemGroupedList.dart';
import 'package:flutter/material.dart';

class EconomiseHomeBody extends StatelessWidget {
  static const double CONTAINER_SIZE_MULTIPLIER = 0.15;
  final List<ExpenseItem> items;

  EconomiseHomeBody(this.items);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            height: size.height * CONTAINER_SIZE_MULTIPLIER,
            child: Stack(
              children: <Widget>[
                Container(
                  height: size.height * CONTAINER_SIZE_MULTIPLIER,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(35),
                      bottomRight: Radius.circular(35),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 25,
                  left: 0,
                  right: 0,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 40),
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 15),
                            blurRadius: 20,
                            color: Colors.black.withOpacity(0.40))
                      ],
                    ),
                    child: Container(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search",
                          hintStyle: TextStyle(
                            color: Colors.blue.withOpacity(0.5),
                          ),
                          contentPadding: EdgeInsets.symmetric(horizontal: 30),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: GroupedExpenseItemList(items),
          ),
        ],
      ),
    );
  }
}
