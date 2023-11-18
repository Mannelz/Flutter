import 'package:base_application/forms/cadastro_page.dart';
import 'package:base_application/forms/routes.dart';
import 'package:base_application/forms/dados_page.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
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
      theme: FlexThemeData.light(scheme: FlexScheme.mandyRed),
      darkTheme: FlexThemeData.dark(scheme: FlexScheme.mandyRed),
      themeMode: ThemeMode.system,
      routes: 
      {
        Routes.HOME: (context) => CadastroPage(),
        Routes.PAGINA_DADOS: (context) => DadosPage(),
      },
    );
  }
}