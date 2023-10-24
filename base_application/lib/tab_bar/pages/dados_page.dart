import 'package:flutter/material.dart';

class DadosPage extends StatelessWidget 
{
  const DadosPage({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      backgroundColor: Colors.blue,
      appBar: AppBar
      (
        title: const Text('Página de Dados'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
      ),
      
      body: const Center
      (
        child: Text
        (
          "Página de Dados",
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
