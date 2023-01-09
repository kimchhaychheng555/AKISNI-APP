import 'package:akisni_app/constants/constant.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photo_view/photo_view.dart';

class ViewImage extends StatelessWidget {
  final String imageUrl;
  const ViewImage({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      height: Get.height,
      child: PhotoView(
        imageProvider:
            CachedNetworkImageProvider("$BASE_URL/uploads/$imageUrl"),
        backgroundDecoration: BoxDecoration(
          color: Colors.black.withOpacity(0.2),
        ),
        minScale: PhotoViewComputedScale.contained,
        onTapUp: (context, details, controllerValue) => Get.back(),
      ),
    );
  }
}
