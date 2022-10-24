import 'package:flutter/material.dart';

enum SnackBarType {
  normal,
  information,
  success,
  fail,
}

class CustomSnackBar extends StatelessWidget {
  /// Type of the snackbar
  ///
  /// There are 4 types
  ///
  /// ```SnackBarType.normal```
  ///
  /// ```SnackBarType.information```
  ///
  /// ```SnackBarType.success```
  ///
  /// ```SnackBarType.fail```
  ///
  /// Defaults to ```SnackBarType.normal```
  final SnackBarType snackBarType;

  /// Border Color
  ///
  /// Defaults to ```Colors.blue```
  final Color? borderColor;

  /// Border width
  ///
  /// Defaults to ```3.0```
  final double borderWidth;

  /// Border Raidus
  ///
  /// Defalts to ```10.0```
  final double borderRadius;

  /// Background Color
  ///
  /// Defaults to ```Colors.white```
  final Color backgroundColor;

  /// Padding in the insides
  ///
  /// Defaults to ```EdgeInsets.all(10.0)```
  final EdgeInsetsGeometry contentPadding;

  /// Height of the SnackBar
  ///
  /// Defaults to ```Unconstrainted```
  final double? height;

  /// Height of the SnackBar. It cannot go bellow 50px however
  ///
  /// Defaults to ```Device.width - 100```
  final double? width;

  /// Leading Widget
  final Widget? leading;

  /// Trailing Widget
  final Widget? trailing;

  /// Title Widget
  final String? title;

  const CustomSnackBar({
    this.borderColor,
    this.borderWidth = 1.0,
    this.borderRadius = 10.0,
    this.backgroundColor = Colors.white,
    this.snackBarType = SnackBarType.success,
    this.contentPadding = const EdgeInsets.all(10.0),
    this.height,
    this.width,
    this.leading,
    this.trailing,
    this.title,
    Key? key,
  }) : super(key: key);

  show(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: CustomSnackBar(
          title: title,
          borderWidth: borderWidth,
          snackBarType: snackBarType,
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minHeight: 50),
      height: height,
      width: width ?? MediaQuery.of(context).size.width - 100,
      padding: contentPadding,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
        border: Border.all(
          color: borderColor ?? buildBorderColor(type: snackBarType),
          width: borderWidth,
        ),
      ),
      child: Row(
        children: [
          leading ?? buildIcon(type: snackBarType),
          snackBarType == SnackBarType.normal
              ? const SizedBox()
              : const SizedBox(width: 10),
          Expanded(
              child: Text(
            title ?? '',
            style: TextStyle(
              color: borderColor ?? buildBorderColor(type: snackBarType),
            ),
          )),
          Container(
            width: 1,
            height: 25,
            color: Colors.grey[200],
            margin: const EdgeInsets.symmetric(horizontal: 5),
          ),
          trailing ??
              InkWell(
                onTap: () {
                  ScaffoldMessenger.of(context).hideCurrentSnackBar();
                },
                child: Icon(Icons.close, color: Colors.black54),
              ),
        ],
      ),
    );
  }

  Color buildBorderColor({required SnackBarType type}) {
    Color color;

    switch (type) {
      case SnackBarType.information:
        color = Colors.blue.shade100;
        break;
      case SnackBarType.success:
        color = Colors.green.shade400;
        break;
      case SnackBarType.fail:
        color = Colors.red.shade400;
        break;
      default:
        color = Colors.black54;
        break;
    }

    return color;
  }

  Widget buildIcon({required SnackBarType type}) {
    Widget widgetIcon = const SizedBox();
    switch (type) {
      case SnackBarType.normal:
        widgetIcon = const SizedBox();
        break;
      case SnackBarType.information:
        widgetIcon = Icon(
          Icons.info,
          color: Colors.blue.shade100,
        );
        break;
      case SnackBarType.success:
        widgetIcon = Icon(
          Icons.check,
          color: Colors.green.shade400,
        );
        break;
      case SnackBarType.fail:
        widgetIcon = Icon(
          Icons.dangerous,
          color: Colors.red.shade400,
        );
        break;
      default:
        widgetIcon = const SizedBox();
        break;
    }

    return widgetIcon;
  }
}
