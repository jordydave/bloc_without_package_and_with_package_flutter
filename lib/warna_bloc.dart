import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum ColorEvent { to_pink, to_grey }

class ColorBloc extends Bloc<ColorEvent, Color> {
  Color _color = Colors.pink;

  @override
  Color get initialState => Colors.pink;

  @override
  Stream<Color> mapEventToState(ColorEvent event)async* {
    _color = (event == ColorEvent.to_pink) ? Colors.pink : Colors.grey;
    yield _color;
  }
}
