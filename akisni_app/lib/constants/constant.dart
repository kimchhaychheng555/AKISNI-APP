// ignore_for_file: constant_identifier_names, non_constant_identifier_names
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

const String APP_TITLE = "AKISNI DANGKOR";
const String CONNECTION_STR_MONOGO_DB =
    "mongodb+srv://admin:S0nFHLdtmTM4SVPD@cluster0.89d88no.mongodb.net/MobileApp?retryWrites=true&w=majority";

// DEFAULT
int DEFAULT_TRACK_SERVICE_DURATION = 1; // Second
double DEFAULT_FONT_SIZE = 16;
double DEFAULT_PADDING = 15;

// Color Constant
Color RedPrimary = HexColor("#C62F30");
Color RedSeconday = HexColor("#C54D53");
Color BluePrimary = HexColor("#3C65AF");
Color BlueSeconday = HexColor("#577AAE");
Color GrayPrimary = HexColor("#666766");
Color GraySeconday = HexColor("#A5A4A4");
Color GrayTertiary = HexColor("#CFCFCE");
Color GrayQuaternary = HexColor("#D6D6D6");

// Font Constant
const String EN_FONT = "MavenPro";
const String KH_FONT = "KhAngWritehand";

// Collection
const String USER_COLLECTION = "data_user";
const String TRACK_USER_COLLECTION = "data_track_user";

class AppSpacing {
  AppSpacing._();
  static const bodyPandding = EdgeInsets.only(left: 15, right: 15);
  static const marginInputText = EdgeInsets.only(top: 8, bottom: 8);
  static const paddingContentInputeText = EdgeInsets.all(8);
}

class AppColors {
  AppColors._();
  static const pramiryColor = Color(0xFF3B65AF);
  static const bgInputText = Color(0xFFF6F6F6);
  static const bgBorderInputText = Color(0xFFE8E8E8);
}