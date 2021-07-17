import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample/main_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final String naokText = "naok";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: ChangeNotifierProvider<MainModel>(
        create: (_) => MainModel(),
        child: Scaffold(
          appBar: AppBar(
            centerTitle: false,
            leading: Icon(Icons.video_call),
            title: const Text(
              'youtubeアプリ',
            ),
            actions: [
              SizedBox(
                width: 44,
                child: TextButton(
                  child: Icon(Icons.search),
                  onPressed: () {
                    //何かを
                  },
                ),
              ),
              SizedBox(
                width: 44,
                child: TextButton(
                  child: Icon(Icons.more_vert),
                  onPressed: () {
                    //何かを
                  },
                ),
              )
            ],
          ),
          body: Consumer<MainModel>(
            builder: (context, model, child) {
            return Center(
            child: Column(
            children: [
                Text(model.naokText),
                ElevatedButton(
                  child: Text('button'),
                  onPressed: (){
                    model.changeKboyText();
                  },
                )
              ]
              )
          );
          }
        ),
        ),
      ),
    );
  }
}
