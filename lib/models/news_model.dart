/// Represents a single news article
class NewsModel {
  /// The title of the news article
  String newsTitle;

  /// The body of the news article
  String newsContent;

  /// The source name of the news article
  String newsSourceName;

  /// The link to the original news article
  String newsSourceLink;

  /// Time when the news article was published
  String newsTime;

  /// The image of the news article
  String newsImageLink;

  /// Creates a new news model
  NewsModel({
    required this.newsTitle,
    required this.newsContent,
    required this.newsSourceName,
    required this.newsSourceLink,
    required this.newsTime,
    required this.newsImageLink,
  });

  /// It takes a map of single news articles and returns a news model of that news article.
  factory NewsModel.fromMap(Map singleNewsData) {
    return NewsModel(
      newsTitle: singleNewsData["title"],
      newsContent: singleNewsData["description"] ?? "Blank",
      newsSourceName: singleNewsData["source"]["name"],
      newsSourceLink: singleNewsData["url"],
      newsTime: singleNewsData["publishedAt"],
      newsImageLink: singleNewsData["urlToImage"] ?? "Blank",
    );
  }
}
