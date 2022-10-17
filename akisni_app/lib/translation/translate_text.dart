import 'package:akisni_app/translation/en_translate.dart';
import 'package:akisni_app/translation/kh_translate.dart';
import 'package:get/get.dart';

class TranslateText extends Translations {
  @override
  Map<String, Map<String, String>> get keys {
    return {
      'en': enTranslate,
      'kh': khTranslate,
    };
  }
}
