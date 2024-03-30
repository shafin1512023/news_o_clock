import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:news_o_clock/models/news_model.dart';
import 'package:news_o_clock/widgets/button/n_button.dart';
import 'package:news_o_clock/widgets/text/n_text.dart';

part "news_bottom.dart";
part "news_image.dart";

/// A widget for showing a single news article
class SingleNews extends StatelessWidget {
  /// A single news model class
  final NewsModel singleNews;

  /// Creates a SingleNews widget
  const SingleNews({super.key, required this.singleNews});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Stack(
        // To move the NewsBottom section to the bottom stack is used.
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const _NewsImage(),
              const Gap(20),
              NText.newsTitle(singleNews.newsTitle),
              const Gap(5),
              NText.newsTimeAndSource(singleNews.newsTime),
              NText.newsTimeAndSource(singleNews.newsSourceName),
              const Gap(5),
              NText.content(singleNews.newsContent),
            ],
          ),

          // This contains the see details and bookmark buttons
          const _NewsBottom(),
        ],
      ),
    );
  }
}


// API KEY = 417000934f1148a4861fddddd48bdc84