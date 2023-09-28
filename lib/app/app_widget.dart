import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cubit/app/pages/cubits/todo_cubit.dart';
import 'package:flutter_cubit/app/pages/home/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => TodoCubit(),
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.indigo,
          ),
          home: const HomePage(
            title: 'Flutter com Cubit',
          ),
          debugShowCheckedModeBanner: false,
        ));
  }
}
