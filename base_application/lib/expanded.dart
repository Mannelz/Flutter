import 'package:base_application/util/grid_area.dart';
import 'package:flutter/material.dart';

main() => runApp(const MyApp());

class MyApp extends StatelessWidget
{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp
    (
      debugShowCheckedModeBanner: false,
      theme: ThemeData
      (
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget 
{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      appBar: AppBar
      (
        title: const Text("Expanded"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
      ),

      body: const Row
      (
        children: 
        [
          GridArea(color: Colors.blue, flex: 3, text: "Texto 1 Texto 1 Texto 1 Texto 1",),
          GridArea(color: Colors.green, flex: 7, text: "Texto 2 Texto 2 Texto 2 Texto 2",)
        ],
      ),
    );
  }
}