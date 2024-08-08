import 'package:flutter_application_1/Screens/DeleteButtonScreen.dart';
import 'package:flutter_application_1/Screens/AddButtonScreen.dart';
import 'package:flutter_application_1/Screens/ListScreen.dart';
import 'package:flutter_application_1/entities/post.dart';
import 'package:flutter_application_1/Router/GoRouter.dart';

final appRouter = GoRouter(
  initialLocation: '/ListScreen',
  routes: [
  GoRoute(
    path: '/ListScreen',
    builder: ((context, state) => const ListScreen())
  ),
  GoRoute(
    path: '/AddButtonScreen/:usuario',
    builder: (context, state) {
        final usuario = state.pathParameters['usuario'] as String; 
        return HomeScreen(usuario: usuario); 
      }
  ),
  GoRoute(
      path: '/DeleteButtonScreen',
      builder: (context, state) {
        final extra = state.extra as Map<String, dynamic>;
        final list = extra['list'] as List<Post>;
        final pressed = extra['pressed'] as int;
        return DeleteButtonScreen(list: list, pressed: pressed);
      },
    ),
  ],
);