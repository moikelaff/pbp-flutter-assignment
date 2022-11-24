import 'package:counter_7/models/watchlistData.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

List<bool> movieStatus = [];
Future<List<watchlistData>> fetch() async {
  var url = Uri.parse('http://localhost:3000/watchlist');
  final response = await http.get(url, headers: {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
    'Access-Control-Allow-Origin': '*',
  });

  var data = jsonDecode(utf8.decode(response.bodyBytes));
  
  List<watchlistData> watchlist = [];
  for (var i in data) {
    if (i != null) {
      watchlist.add(watchlistData.fromJson(i));
      movieStatus.add(watchlistData.fromJson(i).movie_status);
    }
  }
  if (response.statusCode == 200) {
    return watchlist;
  } else {
    throw Exception('Failed to load data');
  }
}
