import 'package:flutter/material.dart';
import 'package:untitled/Views/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        listTileTheme: const ListTileThemeData(
            textColor: Colors.white, iconColor: Colors.white),
        drawerTheme:
            DrawerThemeData(backgroundColor: Colors.grey[800], elevation: 0.0),
        textTheme: const TextTheme(titleMedium: TextStyle(color: Colors.black)),
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}
