import 'package:fitness_daily/data/data_source/remote_datasource.dart';
import 'package:fitness_daily/domain/repository/repository.dart';

class RepositoryImpl extends Repository {
  final RemoteDatasourceImpl remoteDatasource;
  RepositoryImpl(this.remoteDatasource);
  @override
  Future getRecentPosts() async {
    var response = await remoteDatasource.getRecentPosts();
    return;
  }

  @override
  Future getFeaturePost() async {
    return await remoteDatasource.getFeaturePost();
  }
}
