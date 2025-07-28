import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo_app/db/isar_provider.dart';
import 'package:todo_app/rout/main_router.dart';

import 'design/first_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await IsarService.initialize();
  final pref = await SharedPreferences.getInstance();

  runApp(
    ProviderScope(
      overrides: [

      ],
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "todo_app",
      theme: todoAppTheme,
      darkTheme: todoDarkTheme,
      themeMode: ThemeMode.light,
      routerConfig: router,
      themeAnimationStyle: AnimationStyle(
        curve: Curves.easeInCirc,
        duration: Duration(milliseconds: 300),
      ),
    );
  }
}


