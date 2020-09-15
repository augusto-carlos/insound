// import 'dart:ffi';

// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:insound/interfaces/shared_prefs_interface.dart';

// class LocalStorage implements ILocalStorage {
//   @override
//   Future get(String key) async {
//     var sharedPrefs = await SharedPreferences.getInstance();
//     return sharedPrefs.get(key);
//   }

//   @override
//   Future delete(String key) async {
//     var sharedPrefs = await SharedPreferences.getInstance();
//     sharedPrefs.remove(key);
//   }

//   @override
//   Future put(String key, value) async {
//     var sharedPrefs = await SharedPreferences.getInstance();
//     if (key is bool) {
//       sharedPrefs.setBool(key, value);
//     } else if (value is String) {
//       sharedPrefs.setString(key, value);
//     } else if (value is int) {
//       sharedPrefs.setInt(key, value);
//     } else if (value is double) {
//       sharedPrefs.setDouble(key, value);
//     }
//   }
// }
