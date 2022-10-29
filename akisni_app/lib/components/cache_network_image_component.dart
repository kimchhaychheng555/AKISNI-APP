import 'package:akisni_app/constants/constant.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:skeletons/skeletons.dart';

class CacheNetworkImageComponent extends StatelessWidget {
  final String? imageUrl;
  const CacheNetworkImageComponent({
    super.key,
    this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: "$BASE_URL/public/images/$imageUrl",
      fit: BoxFit.cover,
      errorWidget: (context, url, error) =>
          Image.asset("assets/images/placeholder-image.jpg", fit: BoxFit.cover),
      placeholder: (context, url) => const SkeletonAvatar(),
    );
  }
}
