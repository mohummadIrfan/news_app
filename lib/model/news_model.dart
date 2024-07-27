class NewsModel {
  NewsModel({
    required this.status,
    required this.articles,
  });

  final String? status;
  final List<Article> articles;

  factory NewsModel.fromJson(Map<String, dynamic> json) {
    return NewsModel(
      status: json["status"],
      articles: json["articles"] == null
          ? []
          : List<Article>.from(
              json["articles"]!.map((x) => Article.fromJson(x))),
    );
  }
}

class Article {
  Article({
    required this.source,
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });

  final Source? source;
  final String? author;
  final String? title;
  final dynamic description;
  final String? url;
  final dynamic urlToImage;
  final DateTime? publishedAt;
  final dynamic content;

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      source: json["source"] == null ? null : Source.fromJson(json["source"]),
      author: json["author"],
      title: json["title"],
      description: json["description"],
      url: json["url"],
      urlToImage: json["urlToImage"],
      publishedAt: DateTime.tryParse(json["publishedAt"] ?? ""),
      content: json["content"],
    );
  }
}

class Source {
  Source({
    required this.name,
  });

  final String? name;

  factory Source.fromJson(Map<String, dynamic> json) {
    return Source(
      name: json["name"],
    );
  }
}
