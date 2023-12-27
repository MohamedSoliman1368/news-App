class ArticleModel {
  final String? image;
  final String? title;
  final String? suptitle;
  final String? url;

  const ArticleModel(
      {required this.image,
      required this.suptitle,
      required this.title,
      required this.url});

  factory ArticleModel.fromJson(json) {
    return ArticleModel(
      image: json["urlToImage"],
      suptitle: json["description"],
      title: json["title"],
      url: json["url"],
    );
  }
}
