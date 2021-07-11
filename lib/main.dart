import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Scaffold(
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
                  onPressed: (){
                    //何かを
                  },
                ),
              ),
              SizedBox(
                width: 44,
                child: TextButton(
                  child: Icon(Icons.more_vert),
                  onPressed: (){
                    //何かを
                  },
                ),
              )
            ],
        ),
        body: Container(
          child:Column(
            children: [
              Row(
                children: [
                  Image.network(
                  'https://yt3.ggpht.com/ytc/AKedOLScaf6AoOKymriVpQkdgo2d0fl1uLpN5qC4cOS3=s176-c-k-c0x00ffffff-no-rj'
                ),
                Column(
                  children:  [
                      const Text(
                    'youtubeアプリ',
                    ),
                  ]

                )
                ],
              )
            ],
          )
        ),
      ),
    );
  }
}
