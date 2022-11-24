import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:counter_7/models/watchlistData.dart';
import 'package:counter_7/models/budgetData.dart';
import 'package:counter_7/pages/budgetForm.dart';
import 'package:counter_7/pages/drawer.dart';
import 'package:counter_7/pages/showBudget.dart';
import 'package:counter_7/pages/watchlistPage.dart';
import 'package:counter_7/pages/watchlistDetails.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/dataFetcher.dart';
import 'package:flutter/material.dart';

class watchlistPage extends StatefulWidget {
  const watchlistPage({Key? key}) : super(key: key);

  @override
  State<watchlistPage> createState() => _watchlistPageState();
}

class _watchlistPageState extends State<watchlistPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('My Watchlist')),
        drawer: myDrawer(),
        body: FutureBuilder(
            future: fetch(),
            builder: (context, AsyncSnapshot snapshot) {
              if (!snapshot.hasData) {
                return Column(
                  children: const [
                    Text(
                      'No data',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 8)
                  ],
                );
              } else {
                return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (_, index) => ListTile(
                    trailing: Checkbox(
                      value: movieStatus[index],
                      onChanged: (bool? newValue) {
                        setState(() {
                          movieStatus[index] = !movieStatus[index];
                        });
                      },
                    ),
                    title: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => watchlistDetails(
                                  data: snapshot.data![index])),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 12),
                        padding: const EdgeInsets.all(18.0),
                        decoration: movieStatus[index]
                            ? BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    spreadRadius: 2,
                                    blurRadius: 4,
                                    offset: const Offset(0, 3),
                                  ),
                                ],
                              )
                            : BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    spreadRadius: 2,
                                    blurRadius: 4,
                                    offset: const Offset(0, 3),
                                  ),
                                ],
                              ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${snapshot.data![index].movie_title}",
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }
            }
          )
        );
  }
}
