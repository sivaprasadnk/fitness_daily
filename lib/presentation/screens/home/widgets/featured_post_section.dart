import 'package:auto_route/auto_route.dart';
import 'package:fitness_daily/core/common_colors.dart';
import 'package:fitness_daily/core/utils/extensions/context_extensions.dart';
import 'package:fitness_daily/presentation/providers/featured_blog_provider.dart';
import 'package:fitness_daily/presentation/screens/components/common_asset_image.dart';
import 'package:fitness_daily/presentation/screens/components/common_network_image.dart';
import 'package:fitness_daily/presentation/screens/components/read_more_button.dart';
import 'package:fitness_daily/presentation/screens/home/widgets/section_title.dart';
import 'package:fitness_daily/router.gr.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FeaturedPostSection extends StatelessWidget {
  const FeaturedPostSection({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint("## width :${context.screenWidth}");
    var width = context.screenWidth;
    double horizontalPadding = width > 1325 ? 150 : 100;
    horizontalPadding = context.horizontalPadding;
    var color = kCustomBlueColor;
    return Consumer(
      builder: (context, ref, _) {
        var blog = ref.watch(featuredBlogProvider);
        if (blog == null) {
          return SizedBox.shrink();
        }
        return Padding(
          padding: EdgeInsets.only(
            left: horizontalPadding,
            right: horizontalPadding,
            bottom: width > 945 ? 75 : 0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 50),
              SectionTitle(
                title: 'F E A T U R E D\nP O S T',
                textColor: color,
              ),
              SizedBox(height: 50),
              if (width > 945)
                SizedBox(
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: blog.imageAssetPath != null &&
                                blog.imageAssetPath!.isNotEmpty
                            ? CommonAssetImage(
                                // imageUrl: blog.imageNetworkPath!,
                                // cacheKey: blog.imageNetworkPath!,
                                imagePath: blog.imageAssetPath!,
                                // cacheKey: image,
                                // imageRenderMethodForWeb:
                                //     ImageRenderMethodForWeb.HttpGet,
                                height: 350,
                                width: 450,
                                fit: BoxFit.cover,
                              )
                            : SizedBox.shrink(),
                      ),
                      SizedBox(width: 50),
                      Expanded(
                        child: SizedBox(
                          height: 350,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(height: 20),
                              Text(
                                blog.dateString!,
                                style: TextStyle(
                                  color: color,
                                ),
                              ),
                              SizedBox(height: 20),
                              Text(
                                blog.title!,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: color,
                                ),
                              ),
                              SizedBox(height: 20),
                              Text(
                                blog.subTitle!,
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: color,
                                ),
                                maxLines: width < 1100 ? 6 : 10,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Spacer(),
                              ReadMoreButton(
                                color: color,
                                callback: () {
                                  AutoRouter.of(context).push(
                                      DetailsRoute(id: blog.id!, blog: blog));
                                },
                              ),
                              SizedBox(height: 20),
                            ],
                          ),
                        ),
                      ),
                      // if (width > 1337) SizedBox(width: 200),
                    ],
                  ),
                )
              else ...[
                Padding(
                  padding: EdgeInsets.only(
                    right: context.isLargeDevice ? horizontalPadding : 0,
                  ),
                  child: kIsWeb
                      ? CommonAssetImage(
                          imagePath: blog.imageAssetPath!,
                          height: context.isLargeDevice ? 350 : 280,
                          width: context.isLargeDevice ? 450 : double.infinity,
                          fit: BoxFit.cover,
                        )
                      : CommonNetworkImage(
                          imageUrl: blog.imageNetworkPath!,
                          height: context.isLargeDevice ? 350 : 280,
                          width: context.isLargeDevice ? 450 : double.infinity,
                          // fit: BoxFit.cover,
                        ),
                  // child: Image.asset(
                  //   blog.imageAssetPath!,
                  //   height: 250,
                  //   width: double.infinity,
                  //   fit: BoxFit.cover,
                  // ),
                ),
                SizedBox(height: 20),
                Text(
                  blog.dateString!,
                  style: TextStyle(
                    color: color,
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.only(right: horizontalPadding),
                  child: Text(
                    blog.title!,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: color,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.only(right: horizontalPadding),
                  child: Text(
                    blog.subTitle!,
                    style: TextStyle(
                      fontSize: 16,
                      color: color,
                    ),
                    maxLines: width < 1100 ? 6 : 10,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.only(right: horizontalPadding),
                  child: ReadMoreButton(
                    color: color,
                    callback: () {
                      AutoRouter.of(context)
                          .push(DetailsRoute(id: blog.id!, blog: blog));
                    },
                  ),
                ),
                SizedBox(height: 70),
              ],
            ],
          ),
        );
      },
    );
  }
}
