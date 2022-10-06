import 'package:flutter/material.dart';

/* 列表運用 */
class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  var listName = [
    "Apple",
    "Bee",
    "Cat",
    "Dog"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("頁面一"),
        centerTitle: true,
        //是否自動生成返回鍵
        //automaticallyImplyLeading: false,
      ),
      body: RefreshIndicator(
        onRefresh: () =>Future.delayed(Duration(seconds: 2)),
        child: Center(
          child: Column(
            children: [
              /*Expanded(
                child: Container(
                  height: double.infinity,
                  color: Colors.blue,
                ),
              ),
              Expanded(
                child: Container(
                  height: double.infinity,
                  color: Colors.red,
                ),
              ),
              Expanded(
                child: Container(
                  height: double.infinity,
                  color: Colors.green,
                ),
              ),*/
              Expanded(
                child: ListView.builder(
                  itemCount: listName.length,
                  itemBuilder: (context,index){
                    return listItem(index);
                  }
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        listName.add("AAA");
                        //刷新頁面
                        setState(() {});
                      },
                      child: Text("ADD"),
                    )
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        listName.removeAt(0);
                        setState(() {});
                      },
                      child: Text("DEL"),
                    )
                  ),
                ],
              )
           ],
          ),
        ),
      ),
    );
  }

  Widget listItem(int index){
    return Card(
      margin: EdgeInsets.all(8),
        child: ListTile(
          leading: Icon(Icons.account_circle),
          title: Text("第$index號"),
          subtitle: Text("我的名字是 ${listName[index]}"),
        )
    );
  }
}