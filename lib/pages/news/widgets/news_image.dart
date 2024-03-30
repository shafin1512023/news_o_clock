part of "single_news.dart";

class _NewsImage extends StatelessWidget {
  const _NewsImage();

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: SizedBox(
        width: double.infinity,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            "https://placehold.co/600x400/png",
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
