import 'package:flutter/material.dart';
import 'package:news_o_clock/pages/news/widgets/news_view.dart';
import 'package:news_o_clock/services/fetch_news.dart';
import 'package:news_o_clock/utils/common/primary_color.dart';
import 'package:news_o_clock/widgets/text/n_text.dart';

/// The news page for showing news articles.
class NewsPage extends StatelessWidget {
  /// Creates a news page.
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const NText("News Page", fontSize: 25),
        leading: BackButton(color: primaryColor(context)),
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      body: NewsView(fetchNewsFunction: fetchNews()),
    );
  }
}
