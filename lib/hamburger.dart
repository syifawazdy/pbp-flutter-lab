import 'package:counter_7/databudget.dart';
import 'package:counter_7/watchlist/data.dart';
import 'package:flutter/material.dart';

import 'tambahbudget.dart';
import 'main.dart';

class LabDrawer extends StatefulWidget {
  const LabDrawer({super.key});

  @override
  State<LabDrawer> createState() => _LabDrawerState();
}

class _LabDrawerState extends State<LabDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          ListTile(
            title: const Text("counter_7"),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (ctx) => const MyHomePage(title: "Program Counter"),
                ),
              );
            },
          ),
          ListTile(
            title: const Text("Tambah Budget"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (ctx) => const AddBudgetPage(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text("Data Budget"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (ctx) => const BudgetListPage(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text("My Watch List"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (ctx) => const WatchListingPage(),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}