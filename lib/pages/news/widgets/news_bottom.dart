part of "single_news.dart";

class _NewsBottom extends StatelessWidget {
  const _NewsBottom();

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NButton("See details"),
          NButton("Bookmark"),
        ],
      ),
    );
  }
}
