import 'package:cached_network_image/cached_network_image.dart';
import 'package:discounts_pages/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

class NetworkImageWithPlaceholder extends StatelessWidget {
  final String imageUrl;
  final BorderRadiusGeometry? borderRadiusGeometry;

  const NetworkImageWithPlaceholder({Key? key, required this.imageUrl,this.borderRadiusGeometry}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = DeviceUtils.getScreenWidth(context);
    return ClipRRect(
      borderRadius: borderRadiusGeometry ?? BorderRadius.circular(15.0),
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        placeholder: (context, url) => Center(
          child: CircularProgressIndicator(),
        ),

        imageBuilder: (context , imageProvider){
          return Container(
            width: width * 0.5,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: imageProvider,
                fit: BoxFit.cover,
              )
            ),
          );
        },
        cacheManager: CacheManager(
            Config(
                'customCacheKey',
                stalePeriod: const Duration(days: 1)
            )
        ),
        errorWidget: (context, url, error) => const Icon(
          Icons.error,
          size: 100,
          color: Colors.red,
        ),
      ),
    );
  }
  void _deleteCachedImage() {
    CachedNetworkImage.evictFromCache(imageUrl);
  }
}