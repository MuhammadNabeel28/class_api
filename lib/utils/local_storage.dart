// import 'dart:convert';
// import 'package:shared_preferences/shared_preferences.dart';

// class LocalStorage {
//   static late SharedPreferences _preferences;

//   static Future<void> initialize() async {
//     _preferences = await SharedPreferences.getInstance();
//   }

//   // Set a String value
//   static Future<void> setString(String key, String value) async {
//     await _preferences.setString(key, value);
//   }

//   // Get a String value
//   static String? getString(String key) {
//     return _preferences.getString(key);
//   }

//   // Set an int value
//   static Future<void> setInt(String key, int value) async {
//     await _preferences.setInt(key, value);
//   }

//   // Get an int value
//   static int? getInt(String key) {
//     return _preferences.getInt(key);
//   }

//   // Set a double value
//   static Future<void> setDouble(String key, double value) async {
//     await _preferences.setDouble(key, value);
//   }

//   // Get a double value
//   static double? getDouble(String key) {
//     return _preferences.getDouble(key);
//   }

//   // Set a bool value
//   static Future<void> setBool(String key, bool value) async {
//     await _preferences.setBool(key, value);
//   }

//   // Get a bool value
//   static bool? getBool(String key) {
//     return _preferences.getBool(key);
//   }

//   // Set a List<Map> value
//   static Future<void> setListMap(
//     String key,
//     List<Map<String, dynamic>> value,
//   ) async {
//     final jsonValue = jsonEncode(value);
//     await _preferences.setString(key, jsonValue);
//   }

//   // Get a List<Map<String, dynamic>> value
//   static List<Map<String, dynamic>>? getListMap(String key) {
//     final jsonString = _preferences.getString(key);
//     if (jsonString != null) {
//       final List<dynamic> jsonList = jsonDecode(jsonString);
//       return jsonList.cast<Map<String, dynamic>>();
//     }
//     return null;
//   }

//   // Set a JSON value
//   static Future<void> setMap(String key, Map<String, dynamic> value) async {
//     final jsonString = jsonEncode(value);
//     await _preferences.setString(key, jsonString);
//   }

//   // Get a JSON value
//   static Map<String, dynamic>? getMap(String key) {
//     final jsonString = _preferences.getString(key);
//     if (jsonString != null) {
//       return jsonDecode(jsonString);
//     }
//     return null;
//   }

//   // Clear the local storage
//   static Future<void> clear() async {
//     await _preferences.clear();
//   }

//   // Remove a value by key
//   static Future<void> remove(String key) async {
//     await _preferences.remove(key);
//   }

//   // Check if a key exists
//   static bool containsKey(String key) {
//     return _preferences.containsKey(key);
//   }
// }
