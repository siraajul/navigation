import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget{
  MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: HomeActivity(),
    );
  }
}
class HomeActivity extends StatelessWidget{
  HomeActivity({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Home Activity"),),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>PageActivityOne()));}, child: Text("Go Activity 01")),
          ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>PageActivityTwo()));}, child: Text("Go Activity 02"))
        ],
      )
    );
  }
}

class PageActivityOne extends StatelessWidget{
  PageActivityOne({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Page 1 Activity"),),
        body:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeActivity()));}, child: Text("Go On Home")),
            ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>PageActivityTwo()));}, child: Text("Go Activity 02"))
          ],
        )
    );
  }
}
class PageActivityTwo extends StatelessWidget{
  PageActivityTwo({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Page 2 Activity"),),
        body:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeActivity()));}, child: Text("Go On Home")),

            ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>PageActivityOne()));}, child: Text("Go Activity 01"))
          ],
        )
    );
  }
}