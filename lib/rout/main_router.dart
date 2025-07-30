import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_app/user/view/signup_page.dart';

import '../todo/page/todo_main_page.dart';
import '../todo/view/board_todo_view.dart';
import '../todo/view/space_todo_view.dart';
import '../user/view/login_page.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: "/",

  routes: [

    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child){
        return TodoMainPage(currentIndex: 0, child: child);
      },
      routes:[
        GoRoute(
          path: "/",
          builder: (context, state){
            return SpaceTodoView();
          }
        ),
        GoRoute(
            path: "/board",
            builder: (context, state){
              return BoardTodoView();
            }
        ),
      ]
    ),

    GoRoute(
      path: "/login",
      parentNavigatorKey: _rootNavigatorKey,
      builder: (context, state) => LoginPage(),
    ),
    GoRoute(
      path: "/sign-up",
      parentNavigatorKey: _rootNavigatorKey,
      builder: (context, state) {
        return SignupPage();
      },
    ),

  ],
);




