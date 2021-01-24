import 'dart:ui';

import 'package:flutter_getx_multiple_language/language/chi_chn.dart';
import 'package:flutter_getx_multiple_language/language/en_us.dart';
import 'package:flutter_getx_multiple_language/language/tel_ind.dart';
import 'package:get/get.dart';

class LocalizationService extends Translations {
  // here we need to add our default language
  static final locale = Locale('en', 'US');

  // fallbackLocale saves the day when the locale gets in trouble
  static final fallbackLocale = Locale('tr', 'TR');

  // Supported languages
  // Needs to be same order with locales
  static final langs = [
    'English',
    'Telugu',
    'chinese',
  ];

  // Supported locales
  // Needs to be same order with langs
  static final locales = [
    Locale('en', 'US'),
    Locale('tl', 'IN'),
    Locale('ch', 'CH'),
  ];

  // Keys and their translations
  // Translations are separated maps in `lang` file
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': en,
        'tl_IN': tel,
        'ch_CH': chn,
      };

  // Gets locale from language, and updates the locale
  void changeLocale(String lang) {
    final locale = _getLocaleFromLanguage(lang);
    Get.updateLocale(locale);
  }

  // Finds language in `langs` list and returns it as Locale
  Locale _getLocaleFromLanguage(String lang) {
    for (int i = 0; i < langs.length; i++) {
      if (lang == langs[i]) return locales[i];
    }
    return Get.locale;
  }
}
