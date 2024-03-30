import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:news_o_clock/pages/home/widgets/carousel_news_item.dart';

/// News Carousel for featured news section
class NewsCarousel extends StatelessWidget {
  /// List offeatured news
  final List featuredNewsList;

  /// Creates a new News Carousel
  const NewsCarousel({super.key, required this.featuredNewsList});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        scrollDirection: Axis.horizontal,
        disableCenter: true,
        padEnds: false,
        enableInfiniteScroll: false,
        height: 150,
      ),
      items: featuredNewsList.map((i) {
        return const CarouselNewsItem();
      }).toList(),
    );
  }
}
