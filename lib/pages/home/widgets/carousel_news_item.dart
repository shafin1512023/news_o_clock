import 'package:flutter/material.dart';
import 'package:news_o_clock/pages/news/news_page.dart';
import 'package:news_o_clock/utils/common/push_page.dart';

/// News item for showing in the featured news carousel
class CarouselNewsItem extends StatelessWidget {
  /// Creates a carousel news item
  const CarouselNewsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        pushPage(context, page: const NewsPage());
      },
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(right: 10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Text(
          'text',
          style: TextStyle(fontSize: 16.0),
        ),
      ),
    );
  }
}
