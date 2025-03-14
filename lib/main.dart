import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        //darkTheme: ThemeData.dark(),
        home: MyGalery());
  }
}

class MyGalery extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Ma Galerie"),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(4, (index) {
          return Center(
            child: Icon(
           Icons.ac_unit_rounded,
              color: Colors.black,
            ),
          );
        }
        ),
      ),


    );

  }
}
