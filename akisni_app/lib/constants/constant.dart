// ignore_for_file: constant_identifier_names, non_constant_identifier_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

const String APP_TITLE = "AKISNI_DANGKOR";
const String API_STRING_URL = "http://143.198.218.47:8080:/api/";
const String BASE_URL = "http://143.198.218.47:8080";
const String GOOGLE_API_KEY = "AIzaSyCAnJNq2PnO9stzYVa1Wha2rxGmJiULqgo";

// DEFAULT ROLE
List<String> ROLE_LIST = ["Admin", "Moderator", "User"];

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

// COLOR ALERT
// ============
final Color infoColor = HexColor("#1f78d1");
final Color warningColor = HexColor("#fc9403");
final Color errorColor = HexColor("#db3b21");
final Color successColor = HexColor("#1aaa55");
// ============

// Font Constant
const String EN_FONT = "MavenPro";
const String KH_FONT = "KhAngWritehand";

// Collection
const String USER_COLLECTION = "data_user";
const String LOCATION_COLLECTION = "data_location";
const String TRACK_USER_COLLECTION = "data_track_user";

class AppSpacing {
  static const bodyPandding = EdgeInsets.only(left: 15, right: 15);
  static const marginInputText = EdgeInsets.only(top: 8, bottom: 8);
  static const paddingContentInputeText = EdgeInsets.all(8);
}
