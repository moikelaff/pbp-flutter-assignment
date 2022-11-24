import 'dart:convert';

class watchlistData {
  String movie_title;
  String movie_release;
  int movie_rating;
  String movie_review;
  bool movie_status;
  watchlistData(
      {required this.movie_title,
      required this.movie_release,
      required this.movie_rating,
      required this.movie_review,
      required this.movie_status});

  factory watchlistData.fromJson(Map<String, dynamic> json) {
    return watchlistData(
        movie_title: json['movie_title'],
        movie_release: json['movie_release'],
        movie_rating: json['movie_rating'],
        movie_review: json['movie_review'],
        movie_status: json['movie_status']);
  }
  Map<String,dynamic> toJson() => {
    'movie_title': movie_title,
    'movie_release': movie_release,
    'movie_rating': movie_rating,
    'movie_review': movie_review,
    'movie_status': movie_status,
  };
  void changeStatus() {
    this.movie_status = !this.movie_status;
  }
}

List<watchlistData> watchlistFromJson(String str) => List<watchlistData>.from(
    json.decode(str).map((x) => watchlistData.fromJson(x)));
