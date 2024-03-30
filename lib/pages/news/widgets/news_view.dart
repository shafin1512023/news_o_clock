import 'package:flutter/material.dart';
import 'package:news_o_clock/pages/news/widgets/single_news.dart';
import 'package:news_o_clock/utils/common/primary_color.dart';

/// A scrollable widget for showing news articles
class NewsView extends StatelessWidget {
  /// A future object for fetching news articles
  final Future fetchNewsFunction;

  /// Creates a newsview widget
  const NewsView({super.key, required this.fetchNewsFunction});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: fetchNewsFunction,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return PageView.builder(
            scrollDirection: Axis.vertical,
            itemCount: snapshot.data.length,
            itemBuilder: (context, index) {
              return SingleNews(singleNews: snapshot.data[index]);
            },
          );
        }

        // Until the data is fethed, It'll show this.
        return Center(
          child: CircularProgressIndicator(color: primaryColor(context)),
        );
      },
    );
  }
}
