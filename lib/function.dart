import 'package:shared_preferences/shared_preferences.dart';

int counter = 0;
void store(int a) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();

  prefs.setInt('store', a);
}

get() async {
  //final int? counter = prefs.getInt('counter');
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  counter = prefs.getInt('store') ?? 0;
  return counter;
}
