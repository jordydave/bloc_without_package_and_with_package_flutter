import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tugas12/warna_bloc.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ColorBloc bloc = BlocProvider.of<ColorBloc>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Package BloC"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            BlocBuilder<ColorBloc, Color>(
              builder: (context, currentColor) => AnimatedContainer(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 2,
                      offset: Offset(1, 2),
                      color: Colors.blue,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                  color: currentColor,
                ),
                width: 200,
                height: 200,
                duration: Duration(milliseconds: 500),
              ),
            ),
            RaisedButton(
              child: Text("Back"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FloatingActionButton(
                  heroTag: "3",
                  onPressed: () {
                    bloc.add(ColorEvent.to_pink);
                  },
                  backgroundColor: Colors.pink,
                ),
                SizedBox(width: 10),
                FloatingActionButton(
                  heroTag: "4",
                  backgroundColor: Colors.grey,
                  onPressed: () {
                    bloc.add(ColorEvent.to_grey);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
