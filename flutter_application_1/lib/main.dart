import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Router/GoRouter.dart';

void main() {
  runApp( MainApp());
}

class MainApp extends StatelessWidget {
   MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    var routerPrincipal;
    return MaterialApp.router(
      routerConfig: routerPrincipal,
    );
  }
  }