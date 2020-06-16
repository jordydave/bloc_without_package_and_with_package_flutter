import 'package:flutter/material.dart';
import 'package:tugas12/color_bloc.dart';

import 'package:tugas12/second_page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  ColorBloc bloc = ColorBloc();
  @override
  void dispose() {
    bloc.dispose;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Tanpa Package BloC"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            StreamBuilder(
              stream: bloc.stateStream,
              initialData: Colors.amber,
              builder: (context, snapshot) {
                return AnimatedContainer(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(1, 2),
                        blurRadius: 2,
                        color: Colors.black,
                      ),
                    ],
                    color: snapshot.data,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: 100,
                  height: 100,
                  duration: Duration(milliseconds: 500),
                );
              },
            ),
            RaisedButton(
              child: Text("Go To Second Page"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SecondPage();
                    },
                  ),
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FloatingActionButton(
                  heroTag: "1",
                  onPressed: () {
                    bloc.eventSink.add(ColorEvent.to_amber);
                  },
                  backgroundColor: Colors.amber,
                ),
                SizedBox(width: 10),
                FloatingActionButton(
                  heroTag: "2",
                  backgroundColor: Colors.lightBlue,
                  onPressed: () {
                    bloc.eventSink.add(ColorEvent.to_light_blue);
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
