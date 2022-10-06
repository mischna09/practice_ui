


import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("標題"),
        leading: Icon(Icons.adb_rounded),
        actions: [
          IconButton(
            onPressed: (){
              print("icon button");
            },
            icon: Icon(Icons.access_alarms)
          )
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Column(
            children: [
              Text("123"),
              ElevatedButton(
                  onPressed: null,
                  child: Text("沒有事件的按鈕")
              ),
              ElevatedButton(
                  onPressed: (){
                    print("123");
                  },
                  child: Text("登入")
              ),
              OutlinedButton(
                  onPressed: (){
                    print("123");
                  },
                  child: Text("註冊")
              ),
              Text("大標題",
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.amber,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}