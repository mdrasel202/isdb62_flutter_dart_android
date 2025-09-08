import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // final name = const["Rasel", "Hemu", "Jahid"];

  void userTapped(){
    print("user tapped");
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
     home: Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        title: Center(
          child: Text("My App Bar",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        // centerTitle: true,
        backgroundColor: Colors.green,
        elevation: 0,
        leading: Icon(Icons.menu),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.logout),
          ),
        ],
      ),
      // body: Center(
      //   child: Container(
      //     height: 300,
      //     width: 300,
      //     decoration: BoxDecoration(
      //       color: Colors.green,
      //       borderRadius: BorderRadius.circular(20),
      //     ),
      //     // padding: EdgeInsets.all(20),
      //     // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      //     padding: EdgeInsets.only(left: 40, top: 50),
      //     child: Text("Hello",
      //       style: TextStyle(
      //         color: Colors.white,
      //         fontSize: 20,
      //       ),
      //     ),
      //   ),
      // ),

       // body: ListView(
       //   // scrollDirection: Axis.horizontal,
       //   children: [
       //     Container(
       //       // width: 300,
       //       height: 300,
       //       color: Colors.deepPurple,
       //     ),
       //     Container(
       //       // width: 300,
       //       height: 300,
       //       color: Colors.deepPurple[400],
       //     ),
       //     Container(
       //       // width: 300,
       //       height: 300,
       //       color: Colors.deepPurple[200],
       //     ),
       //   ],
       // ),

       // body: ListView.builder(
       //     itemCount: name.length,
       //     itemBuilder: (context, index) => ListTile(
       //       title: Text(name[index]),
       //     ),
       // ),

       body: Center(
         child: GestureDetector(
           onTap:userTapped,
               // (){// print("user tapped");},
           child: Container(
             width: 300,
             height: 250,
             color: Colors.deepPurple,
             child: Center(
               child: Text("tap me"),
             ),
           ),
         ),
       ),
      ),
     );
  }
}

