import 'package:flutter/material.dart';

class AnunciosPage extends StatelessWidget 
{
  const AnunciosPage({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      backgroundColor: Colors.green,
      appBar: AppBar
      (
        title: const Text('Página de Anúncios'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
      ),
      
      body: const Center
      (
        child: Text
        (
          "Página de Anúncios",
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
