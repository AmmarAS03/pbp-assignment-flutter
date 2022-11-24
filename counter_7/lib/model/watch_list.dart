// To parse this JSON data, do
//
//     final watchList = watchListFromJson(jsonString);

import 'dart:convert';

List<WatchList> myWatchListFromJson(String str) => List<WatchList>.from(json.decode(str).map((x) => WatchList.fromJson(x)));

String myWatchListToJson(List<WatchList> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class WatchList {
    WatchList({
        required this.haveWatched,
        required this.movieTitle,
        required this.movieRating,
        required this.movieRelease,
        required this.movieReview,
    });

    bool haveWatched;
    String movieTitle;
    int movieRating;
    int movieRelease;
    String movieReview;

    factory WatchList.fromJson(Map<String, dynamic> json) => WatchList(
        haveWatched: json["have_watched"],
        movieTitle: json["movie_title"],
        movieRating: json["movie_rating"],
        movieRelease: json["movie_release"],
        movieReview: json["movie_review"],
    );

    Map<String, dynamic> toJson() => {
        "have_watched": haveWatched,
        "movie_title": movieTitle,
        "movie_rating": movieRating,
        "movie_release": movieRelease,
        "movie_review": movieReview,
    };
}
