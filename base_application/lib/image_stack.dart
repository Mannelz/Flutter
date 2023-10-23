import 'package:flutter/material.dart';

main() => runApp(const MyApp());

class MyApp extends StatelessWidget 
{
  const MyApp({super.key});
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
        title: const Text('ListView com Imagens'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
      ),

      body: Stack
      (
        children: 
        [
          Container
          (
            color: Colors.red,
            child: const Center(child: Text("Hello World!"),),
          ),

          SizedBox.expand
          (
            child: Image.asset("assets/images/simpsons.jpg", fit: BoxFit.cover,),
          ),

          Column
          (
            mainAxisAlignment: MainAxisAlignment.end,

            children: 
            [
              Row
              (
                children: 
                [
                  Expanded
                  (
                    child: Container
                    (
                      padding: const EdgeInsets.all(16),
                      color: const Color.fromRGBO(254, 203, 0, 0.7),
                      
                      child: const Text
                      (
                        "A família mais divertida do planeta!",
                        textAlign: TextAlign.center,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle
                        (
                          fontSize: 36,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    )
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}