// lib/main.dart
import 'package:flutter/material.dart';
import 'first_screen.dart'; // import relative path ให้ตรงกับ lib/
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

//step 4: Connect to Firebase
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MaterialApp(home: FirstScreen()));
}
