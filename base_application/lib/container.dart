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
        title: const Text("Container"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
      ),

      body: Center
      (
        child: Column
        (
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: 
          [
            Lampada(Colors.red, "Pare"),
            Lampada(Colors.yellow, "Atenção"),
            Lampada(Colors.green, "Siga"),
          ],
        ),
      ),
    );
  }

  Container Lampada(Color cor, String texto)
  {
    return Container
    (
      height: 100,
      width: 100,
      alignment: Alignment.center,
      decoration: BoxDecoration
      (
        borderRadius: const BorderRadius.all(Radius.circular(100)),
        color: cor,
      ),
      margin: const EdgeInsets.only(left: 0, top: 0),
      padding: const EdgeInsets.all(10),
      foregroundDecoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(150.5)),),
      child: Text(texto, style: const TextStyle(color: Colors.white),),
    );
  }
}

