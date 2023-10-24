import 'package:flutter/material.dart';

class FavoritosPage extends StatelessWidget 
{
  const FavoritosPage({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      backgroundColor: Colors.yellow,
      appBar: AppBar
      (
        title: const Text('Página de Favoritos'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
      ),
      body: const Center
      (
        child: Text
        (
          "Página de Favoritos",
          style: TextStyle
          (
            fontSize: 22,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}