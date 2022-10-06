


import 'package:flutter/material.dart';
import 'package:practice_ui/Page1.dart';

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
              Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: Colors.red,
                    width: 2,
                  ),
                ),
                child: Column(
                  children: [
                    Text("大標題",
                      style: TextStyle(
                        fontSize: 28,
                        color: Colors.amber,
                      ),
                    ),
                    Text("123",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.amber,
                      ),
                    ),
                    Text("456",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.amber,
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => Page1()));
                  },
                  child: Text("進入下一個頁面")
              ),
              //Image.network("https://scontent.ftpe2-2.fna.fbcdn.net/v/t1.6435-9/166556403_10158155540521762_6671495462843719861_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=dbeb18&_nc_ohc=X2mKkIdc5p8AX-ibflv&_nc_ht=scontent.ftpe2-2.fna&oh=00_AT-GbqIsOdr2kOgcnhO_1846ghQElPvzyRwAy9TnEyYzZw&oe=6353CF61"),
            ],
          ),
        ),
      ),
    );
  }
}