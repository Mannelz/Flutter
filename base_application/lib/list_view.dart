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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
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
        title: const Text("ListView com imagens"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
      ),

      body: ListView
      (
        children: 
        [
          Image.asset("assets/images/simpsons.jpg", fit: BoxFit.cover,),
          Image.asset
          (
            "assets/images/homer.jpg", 
            width: 300, height: 150,
            fit: BoxFit.fitWidth,
          ),
          Image.asset("assets/images/marge.jpg", fit: BoxFit.cover,),
          Image.asset("assets/images/bart.jpg", fit: BoxFit.cover,),
          Image.asset("assets/images/lisa.png", fit: BoxFit.cover,),
          Image.asset("assets/images/meg.png", fit: BoxFit.cover,),
        ],
      ),
    );
  }
}