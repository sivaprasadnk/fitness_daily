import 'package:fitness_daily/data/models/blog_model.dart';
import 'package:fitness_daily/data/repository/repository_impl.dart';

class GetRecentPosts {
  final RepositoryImpl repository;
  GetRecentPosts(this.repository);
  Future<List<BlogModel>> call() async {
    return await repository.getRecentPosts();
  }
}
