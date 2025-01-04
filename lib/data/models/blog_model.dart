class BlogModel {
  String? date;
  String? title;
  String? subTitle;
  String? content;
  String? author;
  List<String> tags;
  BlogModel({
    this.content = '',
    this.date = '',
    this.title = '',
    this.subTitle = '',
    this.author = "",
    this.tags = const [],
  });
}
