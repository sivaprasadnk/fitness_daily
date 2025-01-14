import 'package:auto_route/auto_route.dart';
import 'package:fitness_daily/core/locator.dart';
import 'package:fitness_daily/domain/use_case/get_featured_post.dart';
import 'package:fitness_daily/domain/use_case/get_recent_posts.dart';
import 'package:fitness_daily/presentation/providers/featured_blog_provider.dart';
import 'package:fitness_daily/presentation/providers/recent_blog_provider.dart';
import 'package:fitness_daily/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      getRecentBlogs(context);
    });
    super.initState();
  }

  getRecentBlogs(BuildContext context) async {
    Future.delayed(Duration(seconds: 3)).then((_) async {
      if (context.mounted) {
        var blogs = await locator<GetRecentPosts>().call();
        var featured = await locator<GetFeaturedPost>().call();
        debugPrint("# blogs length :${blogs.length}");
        if (context.mounted) {
          ref.read(recentBlogProvider.notifier).state = blogs;
          ref.read(featuredBlogProvider.notifier).state = featured;
          AutoRouter.of(context).popAndPush(HomeRoute());
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
