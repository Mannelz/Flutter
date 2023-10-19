import 'package:flutter/material.dart';

main() => runApp(const MyApp());

class Img 
{
  String name;
  String path;

  Img(this.name, this.path);  
}

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
    List<Img> imgs = 
    [
      Img("Homer Simpson", "assets/images/homer.jpg"),
      Img("Marge Simpson", "assets/images/marge.jpg"),
      Img("Bart Simpson", "assets/images/bart.jpg"),
      Img("Lisa Simpson", "assets/images/lisa.png"),
      Img("Meg Simpson", "assets/images/meg.png"),
      Img("Homer Simpson", "assets/images/homer.jpg"),
      Img("Marge Simpson", "assets/images/marge.jpg"),
      Img("Bart Simpson", "assets/images/bart.jpg"),
      Img("Lisa Simpson", "assets/images/lisa.png"),
      Img("Meg Simpson", "assets/images/meg.png"),
      Img("Homer Simpson", "assets/images/homer.jpg"),
      Img("Marge Simpson", "assets/images/marge.jpg"),
      Img("Bart Simpson", "assets/images/bart.jpg"),
      Img("Lisa Simpson", "assets/images/lisa.png"),
      Img("Meg Simpson", "assets/images/meg.png"),
      Img("Homer Simpson", "assets/images/homer.jpg"),
      Img("Marge Simpson", "assets/images/marge.jpg"),
      Img("Bart Simpson", "assets/images/bart.jpg"),
    ];

    return Scaffold
    (
      appBar: AppBar
      (
        title: const Text("ListView com imagens"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
      ),

      body: CreateGridImages(imgs, 3),
    );
  }

  GridView CreateGridImages(List<Img> imgs, int qntImgs) 
  {
    return GridView.builder
    (
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: qntImgs),
      itemCount: imgs.length,
      itemBuilder: (context, index)
      {
        Img img = imgs[index];
        Image imagemFormatada = Image.asset(img.path, fit: BoxFit.cover);
        return Stack
        (
          fit: StackFit.expand,

          children: 
          [
            imagemFormatada,

            Container
            (
              alignment: Alignment.bottomCenter,
              
              child: Container
              (
                decoration: BoxDecoration(color: Colors.black45, borderRadius: BorderRadius.circular(16),),
                margin: const EdgeInsets.all(12), 
                padding: const EdgeInsets.all(8),
                child: Text(img.name, style: const TextStyle(fontSize: 16, color: Colors.white,),)
              ),
            )
          ],
        );
      }
    );
  }
}