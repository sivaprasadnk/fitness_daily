class BlogModel {
  int? id;
  DateTime? date;
  String? title;
  String? subTitle;
  String? content;
  String? author;
  List<String> tags;
  BlogModel({
    this.id,
    this.content = '',
    this.date,
    this.title = '',
    this.subTitle = '',
    this.author = "",
    this.tags = const [],
  });
}
