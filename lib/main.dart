import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final items = List<String>.generate(10000, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          leading: Icon(Icons.videocam),
          title: const Text(
            '松元祐太のFlutterアプリ',
          ),
          actions: <Widget>[
            SizedBox(
              width: 44.0,
              child: FlatButton(
                child: Icon(Icons.search),
                onPressed: () {
                  //
                },
              ),
            ),
            SizedBox(
              width: 44.0,
              child: FlatButton(
                child: Icon(Icons.more_vert),
                onPressed: () {
                  //
                },
              ),
            ),
          ],
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: Image.network(
                        'https://global.toyota/pages/global_toyota/mobility/toyota-brand/emblem_001.jpg',
                      ),
                    ),
                    const SizedBox(
                      width: 8.0,
                    ),
                    Column(
                      children: <Widget>[
                        const Text('松元祐太のFlutter'),
                        FlatButton(
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.video_call,
                                color: Colors.red,
                              ),
                              Text('登録する'),
                            ],
                          ),
                          onPressed: () {
                            //
                          },
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        onTap: () {

                        },
                        contentPadding: EdgeInsets.all(8),
                        leading: Image.network(
                          'https://global.toyota/pages/global_toyota/mobility/toyota-brand/emblem_001.jpg',
                        ),
                        title: Column(
                          children: <Widget>[
                            Text('[Flutter Tutorial] How to make a list'),
                            Row(
                              children: <Widget>[
                                Text(
                                  '298回再生',
                                  style: TextStyle(
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  '3日前',
                                  style: TextStyle(
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        trailing: Icon(Icons.more_vert),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
