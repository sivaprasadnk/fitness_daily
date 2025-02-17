import 'package:fitness_daily/data/models/blog_model.dart';

abstract class Repository {
  Future<List<BlogModel>> getRecentPosts();
  Future<BlogModel> getFeaturePost();
}
