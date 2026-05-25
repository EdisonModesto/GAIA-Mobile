import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DarkNotifier extends Notifier<bool> {
  @override
  bool build() {
    _loadTheme();
    return false;
  }

  void _loadTheme() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final bool? dark = prefs.getBool('dark');
    if (dark != null) {
      state = dark;
    }
  }

  void changeTheme(bool value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('dark', value);
    state = value;
  }

  Future<void> checkTheme() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final bool? lang = prefs.getBool('dark');
    if (lang == null) {
      prefs.setBool('dark', false);
    } else {
      state = lang;
    }
  }
}

final darkProvider = NotifierProvider<DarkNotifier, bool>(() {
  return DarkNotifier();
});
