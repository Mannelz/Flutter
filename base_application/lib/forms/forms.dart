import 'package:base_application/forms/validation.dart';
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
      // The Mandy red, dark theme.
      darkTheme: FlexThemeData.dark(scheme: FlexScheme.mandyRed),
      // Use dark or light theme based on system setting.
      themeMode: ThemeMode.system,
      home: CadastroPage(),
    );
  }
}

class CadastroPage extends StatelessWidget 
{
  CadastroPage({super.key});
  final _formKey = GlobalKey<FormState>();
  final Validation validar = Validation();

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      appBar: AppBar
      (
        title: const Text("Layout Modelo"),
        centerTitle: true,
      ),

      body: SingleChildScrollView
      (
        child: Form
        (
          key: _formKey,

          child: Container
          (
            padding: EdgeInsets.all(16.0),
        
            child: Column
            (
              children: 
              [
                TextFormField
                (
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.text,
                  autofocus: true,

                  validator: (nome) => validar.campoNome(nome.toString()),

                  decoration: InputDecoration
                  (
                    labelText: "Nome",
                    hintText: "Entre com seu nome",
                    border: OutlineInputBorder(borderSide: BorderSide()), 
                  ),
                ),
        
                SizedBox(height: 10),
        
                TextFormField
                (
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.text,
                  
                  validator: (sobrenome) => validar.campoSobreNome(sobrenome.toString()),

                  decoration: InputDecoration
                  (
                    labelText: "Sobrenome",
                    hintText: "Entre com seu sobrenome",
                    border: OutlineInputBorder(borderSide: BorderSide()), 
                  ),
                ),
        
                SizedBox(height: 10),
        
                TextFormField
                (
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,

                  validator: (email) => validar.campoEmail(email.toString()),

                  decoration: InputDecoration
                  (
                    labelText: "Email",
                    hintText: "Entre com seu email",
                    border: OutlineInputBorder(borderSide: BorderSide()), 
                  ),
                ),
        
                SizedBox(height: 10),
        
                TextFormField
                (
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.number,
                  obscureText: true,

                  onFieldSubmitted: (value)
                  {
                    _onSubmit(context);
                  },

                  validator: (senha) => validar.campoSenha(senha.toString()),

                  decoration: InputDecoration
                  (
                    labelText: "Senha",
                    hintText: "Entre com sua senha",
                    border: OutlineInputBorder(borderSide: BorderSide()), 
                  ),
                ),
        
                SizedBox(height: 10),

                SizedBox
                (
                  width: double.infinity,
                  height: 60,
        
                  child: ElevatedButton
                  (
                    child: Text('Cadastrar'), 
                    style: ElevatedButton.styleFrom
                    (
                      backgroundColor: Colors.green,
                      textStyle: TextStyle
                      (
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )
                    ),
                    onPressed:() {_onSubmit(context);},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onSubmit(inContext)
  {
    if (_formKey.currentState!.validate())
      print('Formulário Validado!');
    else
    {
      print('Formulário com Erros.');

      showDialog
      (
        context: inContext, 
        barrierDismissible: false,
        builder: (inContext)
        {
          return WillPopScope
          (
            onWillPop: () async => false,
            child: AlertDialog
            (
              title: Text('Dados Inválidos!'),
              actions: 
              [
                TextButton(
                  onPressed: (){Navigator.pop(inContext);}, child: Text('Cancelar'),
                ),
                
                TextButton(
                  onPressed: (){Navigator.pop(inContext);}, child: Text('OK'),
                ),
              ],
            ),
          );
        }
      );
    }
  }
}