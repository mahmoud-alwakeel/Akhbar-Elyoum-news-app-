class ArticleModel {
  final String title;
  final String? subTitle;
  final String? image;

  const ArticleModel(
      {required this.title, required this.subTitle, required this.image});

  factory ArticleModel.fromJson(json) {
    return ArticleModel(
        title: json['title'] ?? '',
        subTitle: json['description'],
        image: json['urlToImage']);
  }
}