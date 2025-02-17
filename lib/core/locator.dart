import 'package:fitness_daily/data/data_source/remote_datasource.dart';
import 'package:fitness_daily/data/repository/repository_impl.dart';
import 'package:fitness_daily/domain/use_case/get_featured_post.dart';
import 'package:fitness_daily/domain/use_case/get_recent_posts.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void setup() {
  locator.registerSingleton<RemoteDatasourceImpl>(RemoteDatasourceImpl());
  locator.registerSingleton<RepositoryImpl>(RepositoryImpl(locator()));

// Alternatively you could write it if you don't like global variables
  GetIt.I.registerSingleton<GetRecentPosts>(GetRecentPosts(locator()));
  GetIt.I.registerSingleton<GetFeaturedPost>(GetFeaturedPost(locator()));
}
