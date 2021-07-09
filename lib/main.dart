import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  List<Color> bgColors = [Colors.blue, Colors.red, Colors.green];
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Sliver Demo'),
        ),
        body: CustomScrollView(
          slivers: [
            SliverSafeArea(
              sliver: SliverPadding(
                padding: EdgeInsets.all(8),
                sliver: SliverGrid(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                    childAspectRatio: 3/4,
                  ),
                  delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return Container(
                          color: Color.fromARGB(
                            255,
                            Random().nextInt(256),
                            Random().nextInt(256),
                            Random().nextInt(256),
                          ),
                        );
                      },
                    childCount: 100
                  ),

                ),
              ),
            )
          ],
        ),
        // body: ListView.builder(itemBuilder: (BuildContext context, int index) {
        //   return Container(
        //     height: 70,
        //     color: bgColors[index %3],
        //   );
        // })
        ),
    );
  }
}
