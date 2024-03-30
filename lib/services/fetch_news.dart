import 'dart:convert';

import 'package:http/http.dart';
import 'package:news_o_clock/models/news_model.dart';

/// Fetches the news articles from the specified api and returns a future list
/// of news models.
Future<List<NewsModel>> fetchNews() async {
  var response = await get(
    Uri.parse(
      "https://newsapi.org/v2/top-headlines?country=us&apiKey=417000934f1148a4861fddddd48bdc84",
    ),
  );
  var newsData = jsonDecode(response.body) as Map;

  List<NewsModel> newsList = [];

  if (newsData["status"] == "ok") {
    for (var singleNewsData in newsData["articles"]) {
      newsList.add(NewsModel.fromMap(singleNewsData));
    }
  }

  return newsList;
}
