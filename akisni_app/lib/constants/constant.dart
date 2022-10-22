// ignore_for_file: constant_identifier_names, non_constant_identifier_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

const String APP_TITLE = "AKISNI DANGKOR";
const String CONNECTION_STR_MONOGO_DB =
    "mongodb+srv://admin:S0nFHLdtmTM4SVPD@cluster0.89d88no.mongodb.net/MobileApp?retryWrites=true&w=majority";
const String GOOGLE_API_KEY = "AIzaSyCAnJNq2PnO9stzYVa1Wha2rxGmJiULqgo";

// DEFAULT
int DEFAULT_TRACK_SERVICE_DURATION = 1; // Second
double DEFAULT_FONT_SIZE = 16;
double SPACING_10 = 10;
double SPACING_15 = 15;
double DEFAULT_PADDING = 15;
double FONT_SIZE_HEADER = 30;

// Color Constant
Color RedPrimary = HexColor("#C62F30");
Color RedSeconday = HexColor("#C54D53");
Color BluePrimary = HexColor("#3C65AF");
Color BlueSeconday = HexColor("#577AAE");
Color GrayPrimary = HexColor("#666766");
Color GraySeconday = HexColor("#A5A4A4");
Color GrayTertiary = HexColor("#CFCFCE");
Color ActiveColor = HexColor("#1EAD3E");
Color DeActiveColor = HexColor("#C63030");
Color GrayQuaternary = HexColor("#f6f6f6");

// Font Constant
const String EN_FONT = "MavenPro";
const String KH_FONT = "KhAngWritehand";

// Collection
const String USER_COLLECTION = "data_user";
const String TRACK_USER_COLLECTION = "data_track_user";

class AppSpacing {
  static const bodyPandding = EdgeInsets.only(left: 15, right: 15);
  static const marginInputText = EdgeInsets.only(top: 8, bottom: 8);
  static const paddingContentInputeText = EdgeInsets.all(8);
}
