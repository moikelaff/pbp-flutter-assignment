
import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/budgetForm.dart';
import 'package:counter_7/showBudget.dart';

class myDrawer extends StatelessWidget {
  const myDrawer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(8),
        children: [
          ListTile(
            title: const Text('Counter 7'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MyHomePage()),
              );
            },
          ),
          ListTile(
            title: const Text('Budget Form'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const budgetForm()),
                );
            },
          ),
          ListTile(
            title: const Text('Budget Data'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const showBudget()),
              );
            },
          ),
        ],
      ),
    );
  }
}