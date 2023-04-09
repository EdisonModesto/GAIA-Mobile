import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LangNotifier extends StateNotifier<bool> {
  LangNotifier() : super(true);

  void changeLang(bool value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('lang', value);
    state = value;
  }

  checkLang() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final bool? lang = prefs.getBool('lang');
    if (lang == null) {
      prefs.setBool('lang', true);
    }
  }


}


final langProvider = StateNotifierProvider((ref){
  return LangNotifier();
});