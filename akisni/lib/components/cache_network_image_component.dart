import 'package:akisni/constants/constant.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:skeletons/skeletons.dart';

class CacheNetworkImageComponent extends StatelessWidget {
  final String? imageUrl;
  final Widget? errorWidget;
  const CacheNetworkImageComponent({
    super.key,
    this.imageUrl,
    this.errorWidget,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: "$BASE_URL/public/images/$imageUrl",
      fit: BoxFit.cover,
      errorWidget: (context, url, error) =>
          errorWidget ??
          Image.asset("assets/images/placeholder-image.jpg", fit: BoxFit.cover),
      placeholder: (context, url) => const SkeletonAvatar(),
    );
  }
}
