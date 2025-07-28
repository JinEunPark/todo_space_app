import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_app/user/view/signup_page.dart';

import '../todo/view/todo_main_page.dart';
import '../user/view/login_page.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: "/",

  routes: [
    GoRoute(
      path:"/",
      parentNavigatorKey: _rootNavigatorKey,
      builder: (context, state) => TodoMainPage(),
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


