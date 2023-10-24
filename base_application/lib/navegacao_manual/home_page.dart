import 'package:flutter/material.dart';
import 'arquivos_page.dart';

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
        title: const Text("HomePage"),
        centerTitle: true,
      ),

      body: Center
      (
        child: ElevatedButton
            (
              onPressed: () 
              {
                Navigator.push
                (
                  context, 
                  MaterialPageRoute
                  (
                    builder: (context) => ArquivosPage(),
                  )
                );
              }, 
              style: ElevatedButton.styleFrom
              (
                padding: const EdgeInsets.all(8),
                textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
              ),
              child: const SizedBox
              (
                width: 300,
                height: 30,
                child: Row
                (
                  children: 
                  [
                    Text("Arquivos"),
                    SizedBox(width: 8,),
                    Icon(Icons.save)
                  ],
                ),
              ),
            ),
      ),
    );
  }
}