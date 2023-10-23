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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
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
        title: const Text("Text"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
      ),

      body: Container
      (
        color: const Color.fromARGB(51, 33, 31, 33),
        
        child: const Center
        (
          child: Column
          (
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: 
            [
              Text
              (
                "Camila Parabéns!",
                style: TextStyle
                (
                  fontFamily: "Dancing",
                  fontSize: 40,
                  fontWeight: FontWeight.w800,
                  fontStyle: FontStyle.italic,
                  decoration: TextDecoration.overline,
                  decorationColor: Colors.blue,
                  decorationStyle: TextDecorationStyle.wavy,
                  decorationThickness: 2,
                  color: Color.fromARGB(239, 4, 3, 3),
                ),
              ),

              Text
              (
                'Achim Parabéns!',
                style: TextStyle
                (
                  fontFamily: 'Montserrat',
                  fontSize: 40,
                  fontWeight: FontWeight.w800,
                  fontStyle: FontStyle.italic,
                  decoration: TextDecoration.overline,
                  decorationColor: Colors.blue,
                  decorationStyle: TextDecorationStyle.wavy,
                  decorationThickness: 2,
                  color: Color.fromARGB(239, 4, 3, 3),
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}