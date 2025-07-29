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
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.center,
                end: Alignment.bottomCenter,
                colors: [
                  AppColors.scaffoldBackgroundColor,

                  Color(0xFF191B20),
                  Color(0xFF191B20),
                  Color(0xFF191B20),
                  Color(0xFF191B20),
                  Color(0xFF2A2D35),
                ]
            )
        ),

        child: SafeArea(
          child: Column(
            children: [
              //header widget
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 2.0),

                      child: Icon(
                        Icons.search_outlined,
                        color: Colors.white,
                      ),

                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 2.0),

                      child: Icon(
                        Icons.home_outlined,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 2.0),

                      child: Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),

              //body widget
              Container(


                child: Column(

                  children: [],
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: CircleBorder(),
        backgroundColor: AppColors.floatingActionButtonColor,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
