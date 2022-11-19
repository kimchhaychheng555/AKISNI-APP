// ignore_for_file: depend_on_referenced_packages

import 'dart:convert';
import 'package:akisni_app/models/location_list_models/location_list_model.dart';
import 'package:akisni_app/services/app_services.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';

class TelegramService {
  static String chatBot = "1447468812:AAF-avVJ89HS888VRf6ZlvDAXbrTWTKjn0I";
  static String channel = "-1001603600275";

  static void sendMessage(String title, LocationListModel? locate) async {
    var dateStr = DateFormat("dd-MM-yyyy hh:mm a").format(DateTime.now());
    var text = '''
<b><i>User: ${AppService.loginUser.fullName}</i></b>
<b><i>Date: $dateStr</i></b>
———————————————
<b>$title</b>
———————————————
<b>${locate?.title}</b>
<b>Power: </b>${locate?.power}
<b>Type: </b>${locate?.type}
<b>Deposit: </b>${locate?.deposit}
<b>Install Date: </b>${locate?.installDate}
<b>Customer Name: </b>${locate?.name}
<b>Install By: </b>${locate?.company}
<b>Lat: </b>${locate?.latitude}
<b>Long: </b>${locate?.longitude}
''';

    await post(
      Uri.parse('https://api.telegram.org/bot$chatBot/sendMessage'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        "chat_id": channel,
        "text": text,
        "parse_mode": "html",
      }),
    );
  }
}
