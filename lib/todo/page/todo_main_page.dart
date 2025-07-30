import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_app/design/first_theme.dart';

class TodoMainPage extends ConsumerStatefulWidget {
  const TodoMainPage({super.key, required this.child, required this.currentIndex});

  final Widget child;
  final int currentIndex;

  @override
  ConsumerState createState() => _TodoMainPageState();
}

class _TodoMainPageState extends ConsumerState<TodoMainPage> {

  late PageController _controller;
  int _currentPage = 0;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = PageController(initialPage: _currentPage);
  }



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
              Column(
                children: [
                  //TODO : 행성 뷰가 들어갈 영영의 구현


                ],
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
