import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:counter_7/models/watchlistData.dart';
import 'package:counter_7/pages/drawer.dart';

class watchlistDetails extends StatelessWidget {
  const watchlistDetails({super.key, required this.data});
  final watchlistData data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details of ${data.movie_title}'),
      ),
      drawer: myDrawer(),
      body: Column(
        children: [
          Center(
            child: Text(data.movie_title,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
          ),
          Row(
            children: [
              Text("Release Date: ${data.movie_release}",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18)),
            ],
          ),
          Row(
            children: [
              Text("Rating: ${data.movie_rating}",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18)),
            ],
          ),
          Row(
            children: [
              const Text("Status: ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              if (data.movie_status)
                const Text("Watched",
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 18)),
              if (!data.movie_status)
                const Text("Not Watched",
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 18)),
            ],
          ),
          Row(
            children: [
              Text("review: ${data.movie_review}",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18)),
            ],
          ),
        ],
      ),
      persistentFooterButtons: [
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              minimumSize: const Size.fromHeight(50),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            child:const Text(
              'return',
              style: TextStyle(fontSize:16),
          )
        )
      ],
    );
  }
}
