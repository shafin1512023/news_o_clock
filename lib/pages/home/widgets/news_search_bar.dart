import 'package:flutter/material.dart';
import 'package:news_o_clock/widgets/text_field/n_text_field.dart';

/// A search bar for searching news
class NewsSearchBar extends StatelessWidget {
  /// Creates a news search bar
  const NewsSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return NTextField(
      placeholder: "Search news",
      icon: Icon(
        Icons.search_rounded,
        color: Theme.of(context).colorScheme.primary,
        size: 25,
      ),
    );
  }
}
