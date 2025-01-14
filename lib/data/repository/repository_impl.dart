import 'package:fitness_daily/data/data_source/remote_datasource.dart';
import 'package:fitness_daily/data/models/blog_model.dart';
import 'package:fitness_daily/domain/repository/repository.dart';

class RepositoryImpl extends Repository {
  final RemoteDatasourceImpl remoteDatasource;
  RepositoryImpl(this.remoteDatasource);
  @override
  Future<List<BlogModel>> getRecentPosts() async {
    var response = await remoteDatasource.getRecentPosts();
    return response;
  }

  @override
  Future<BlogModel> getFeaturePost() async {
    return await remoteDatasource.getFeaturePost();
  }
}
