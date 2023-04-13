import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DarkNotifier extends StateNotifier<bool> {
  DarkNotifier() : super(false);

  void changeTheme(bool value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('dark', value);
    state = value;
  }

  checkTheme() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final bool? lang = prefs.getBool('dark');
    if (lang == null) {
      prefs.setBool('dark', false);
    } else {
      state = lang;
    }
  }

}


final darkProvider = StateNotifierProvider((ref){
  return DarkNotifier();
});