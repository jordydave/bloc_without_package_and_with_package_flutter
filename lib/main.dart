import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tugas12/main_page.dart';

import 'package:tugas12/warna_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ColorBloc>(
      create: (context) => ColorBloc(),
      child: MaterialApp(
        home: BlocProvider<ColorBloc>(
          create: (context) => ColorBloc(),
          child: MainPage(),
        ),
      ),
    );
  }
}
