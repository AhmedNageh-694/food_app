import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  late SharedPreferences sharedPreferences;
  Future<void> initPreferences() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

// Set And Get Boolean
  Future<dynamic> setBoolean(String key, bool boolValue) async {
    await sharedPreferences.setBool(key, boolValue);
  }

  bool? getBoolean(String key) {
    return sharedPreferences.getBool(key);
  }

  // remove Shared preference
  Future<dynamic> removeSharedPref(String key) async {
    await sharedPreferences.remove(key);
  }

// if ican recivice from Preferance
  bool containPref(String key) {
    if (sharedPreferences.get(key) == null) {
      return false;
    } else {
      return true;
    }
  }

// Clear all data in Preferences
  Future<dynamic> clearSharedPref() async {
    await sharedPreferences.clear();
  }
}
