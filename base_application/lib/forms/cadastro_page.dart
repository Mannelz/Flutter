import 'package:base_application/forms/pessoa.dart';
import 'package:base_application/forms/routes.dart';
import 'package:base_application/forms/validation.dart';
import 'package:flutter/material.dart';

class CadastroPage extends StatelessWidget 
{
  CadastroPage({super.key});

  final _formKey = GlobalKey<FormState>();
  final Validation validar = Validation();
  final Pessoa usuario = Pessoa();

  final fieldNome = TextEditingController();
  final fieldSobrenome = TextEditingController();
  final fieldEmail = TextEditingController();
  final fieldSenha = TextEditingController(); 

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      appBar: AppBar
      (
        title: const Text("Cadastro"),
        centerTitle: true,
      ),

      body: SingleChildScrollView
      (
        child: Form
        (
          key: _formKey,

          child: Container
          (
            padding: const EdgeInsets.all(16.0),
        
            child: Column
            (
              children: 
              [
                TextFormField
                (
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.text,
                  autofocus: true,
                  controller: fieldNome,

                  validator: (nome) => validar.campoNome(nome.toString()),

                  onSaved: (String? value)
                  {
                    usuario.nome = value;
                  },

                  decoration: const InputDecoration
                  (
                    labelText: "Nome",
                    hintText: "Entre com seu nome",
                    border: OutlineInputBorder(borderSide: BorderSide()), 
                  ),
                ),
        
                const SizedBox(height: 10),
        
                TextFormField
                (
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.text,
                  controller: fieldSobrenome,
                  
                  validator: (sobrenome) => validar.campoSobreNome(sobrenome.toString()),

                  onSaved: (String? value)
                  {
                    usuario.sobrenome = value;
                  },

                  decoration: const InputDecoration
                  (
                    labelText: "Sobrenome",
                    hintText: "Entre com seu sobrenome",
                    border: OutlineInputBorder(borderSide: BorderSide()), 
                  ),
                ),
        
                const SizedBox(height: 10),
        
                TextFormField
                (
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                  controller: fieldEmail,

                  validator: (email) => validar.campoEmail(email.toString()),

                  onSaved: (String? value)
                  {
                    usuario.email = value;
                  },

                  decoration: const InputDecoration
                  (
                    labelText: "Email",
                    hintText: "Entre com seu email",
                    border: OutlineInputBorder(borderSide: BorderSide()), 
                  ),
                ),
        
                const SizedBox(height: 10),
        
                TextFormField
                (
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  controller: fieldSenha,

                  onFieldSubmitted: (value)
                  {
                    _onSubmit(context);
                  },

                  validator: (senha) => validar.campoSenha(senha.toString()),

                  onSaved: (String? value)
                  {
                    usuario.senha = value;
                  },

                  decoration: const InputDecoration
                  (
                    labelText: "Senha",
                    hintText: "Entre com sua senha",
                    border: OutlineInputBorder(borderSide: BorderSide()), 
                  ),
                ),
        
                const SizedBox(height: 10),

                SizedBox
                (
                  width: double.infinity,
                  height: 60,
        
                  child: ElevatedButton
                  (
                    style: ElevatedButton.styleFrom
                    (
                      backgroundColor: Colors.green,
                      textStyle: const TextStyle
                      (
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )
                    ),
                    onPressed:() {_onSubmit(context);},
                    child: const Text('Cadastrar'),
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
    {
      print('Formulário Validado!');

      _formKey.currentState!.save();
      clearFields();
      Navigator.of(inContext).pushNamed(Routes.PAGINA_DADOS, arguments:usuario);
    }
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
              title: const Text('Dados Inválidos!'),
              actions: 
              [
                TextButton(
                  onPressed: (){Navigator.pop(inContext);}, child: const Text('Cancelar'),
                ),
                
                TextButton(
                  onPressed: (){Navigator.pop(inContext);}, child: const Text('OK'),
                ),
              ],
            ),
          );
        }
      );
    }
  }

  void clearFields() 
  {
    fieldNome.clear();
    fieldSobrenome.clear();
    fieldEmail.clear();
    fieldSenha.clear();
  }
}