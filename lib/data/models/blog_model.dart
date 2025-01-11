class BlogModel {
  int? id;
  DateTime? date;
  String? dateString;
  String? title;
  String? subTitle;
  String? content;
  String? author;
  List<String>? tags;
  String? imageAssetPath;
  String? imageNetworkPath;
  String? isActive;
  BlogModel({
    this.id,
    this.content = '',
    this.date,
    this.dateString,
    this.title = '',
    this.subTitle = '',
    this.author = "",
    this.imageAssetPath = "",
    this.imageNetworkPath = "",
    this.isActive = 'Y',
    this.tags = const [],
  });

  factory BlogModel.fromJson(Map<String, dynamic> json) {
    return BlogModel(
      id: json['id'] ?? 1,
      title: json['title'] ?? '',
      subTitle: json['subTitle'] ?? "",
      content: json['content'] ?? "",
      date: json['date'],
      dateString: json['dateString'] ?? "",
      author: json['author'] ?? "",
      imageNetworkPath: json['imagePath'] ?? "",
      isActive: json['isActive'] ?? "Y",
      tags: json['tags'] != null
          ? (json['tags'] as List).map((e) => e.toString()).toList()
          : [],
    );
  }
}
