class BlogModel {
  int? id;
  DateTime? date;
  String? title;
  String? subTitle;
  String? content;
  String? author;
  List<String> tags;
  String? imageAssetPath;
  String? imageNetworkPath;
  BlogModel({
    this.id,
    this.content = '',
    this.date,
    this.title = '',
    this.subTitle = '',
    this.author = "",
    this.imageAssetPath = "",
    this.imageNetworkPath = "",
    this.tags = const [],
  });
}
