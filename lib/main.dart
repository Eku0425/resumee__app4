import 'package:flutter/material.dart';
import 'package:resummeapp_3/routs.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,

      routes: AppRoutes.routes,
    );

  }
}
