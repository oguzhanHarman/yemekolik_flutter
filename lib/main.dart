import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'screens/login_screen.dart';
import 'screens/menu_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); // Firebase'i başlat
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _darkModeEnabled = false; // Varsayılan açık tema

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yemekolik',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: _darkModeEnabled ? ThemeMode.dark : ThemeMode.light,
      home: FirebaseAuth.instance.currentUser == null
          ? const LoginScreen()
          : const MenuScreen(),
    );
  }
}
