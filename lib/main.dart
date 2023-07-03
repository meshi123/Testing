import 'package:flutter/material.dart';
import 'app.dart';
import 'helpers/object_box.dart';

late ObjectBox objectBox;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  objectBox = await ObjectBox.init();

  runApp(const App());
}
