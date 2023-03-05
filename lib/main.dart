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
          ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>PageActivityOne("This is From Home to 1")));}, child: Text("Go Activity 01")),
          ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>PageActivityTwo("This is From Home to 2")));}, child: Text("Go Activity 02"))
        ],
      )
    );
  }
}

//Activity One
class PageActivityOne extends StatelessWidget{

  String Messege;
   PageActivityOne(
      this.Messege,
      {super.key}
      );


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text(Messege),),
        body:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeActivity()));}, child: Text("Go On Home")),
            ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>PageActivityTwo("This is From 1 to 2")));}, child: Text("Go Activity 02"))
          ],
        )
    );
  }
}

//Activity Two
class PageActivityTwo extends StatelessWidget{

  String Messege;
   PageActivityTwo(
      this.Messege,{super.key});


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text(Messege),),
        body:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeActivity()));}, child: Text("Go On Home")),

            ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>PageActivityOne("This is From 2 to 1")));}, child: Text("Go Activity 01"))
          ],
        )
    );
  }
}