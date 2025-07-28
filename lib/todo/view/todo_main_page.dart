import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_app/design/first_theme.dart';

class TodoMainPage extends ConsumerStatefulWidget {
  const TodoMainPage({super.key});

  @override
  ConsumerState createState() => _TodoMainPageState();
}

class _TodoMainPageState extends ConsumerState<TodoMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      body: SafeArea(
          child: Column(
        children: [],
      )),
    );
  }
}
