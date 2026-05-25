import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LangNotifier extends Notifier<bool> {
  @override
  bool build() {
    _loadLang();
    return true;
  }

  void _loadLang() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final bool? lang = prefs.getBool('lang');
    if (lang != null) {
      state = lang;
    }
  }

  void changeLang(bool value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('lang', value);
    state = value;
  }

  Future<void> checkLang() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final bool? lang = prefs.getBool('lang');
    if (lang == null) {
      prefs.setBool('lang', true);
    } else {
      state = lang;
    }
  }
}

final langProvider = NotifierProvider<LangNotifier, bool>(() {
  return LangNotifier();
});
