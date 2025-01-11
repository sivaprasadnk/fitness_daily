import 'package:fitness_daily/data/repository/repository_impl.dart';
import 'package:flutter/material.dart';

class GetRecentPosts {
  final RepositoryImpl repository;
  GetRecentPosts(this.repository);
  Future call() async {
    debugPrint("##");
    return await repository.getRecentPosts();
  }
}
