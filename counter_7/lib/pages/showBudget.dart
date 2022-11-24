import 'package:flutter/material.dart';
import 'package:counter_7/pages/drawer.dart';
import 'package:counter_7/models/budgetData.dart';
import 'package:intl/intl.dart';

class showBudget extends StatefulWidget {
  const showBudget({super.key});

  @override
  State<showBudget> createState() => _showBudgetState();
}

class _showBudgetState extends State<showBudget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Budget Data'),
      ),
      drawer: myDrawer(),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    budgetData.budgets[index].title,
                    style: const TextStyle(fontSize: 18),
                  ),
                  Text(
                      DateFormat('EEEE, MMMM d, yyyy')
                          .format(budgetData.budgets[index].date),
                      style: TextStyle(fontSize: 15),
                      textAlign: TextAlign.left),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        budgetData.budgets[index].amount.toString(),
                        style: const TextStyle(fontSize: 18),
                      ),
                      Text(
                        budgetData.budgets[index].type,
                        style: const TextStyle(fontSize: 18),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        },
        itemCount: budgetData.budgets.length,
      ),
    );
  }
}