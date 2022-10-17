import 'package:akisni_app/constants/constant.dart';
import 'package:flutter/material.dart';
import 'package:loading_overlay/loading_overlay.dart';

class LoadingOverlayComponent extends StatelessWidget {
  final bool isLoading;
  final Widget child;
  const LoadingOverlayComponent({
    Key? key,
    this.isLoading = false,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoadingOverlay(
      isLoading: isLoading,
      color: Colors.black,
      opacity: 0.6,
      progressIndicator: CircularProgressIndicator(
        color: BluePrimary,
      ),
      child: child,
    );
  }
}
