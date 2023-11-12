
import 'package:app_tr_mobile/presentation/screens/auth/login_screen.dart';
import 'package:app_tr_mobile/presentation/screens/taskList/task_list_screen.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/task-lists',
      builder: (context, state) => const TaskListScreen(),
    )
  ],
);