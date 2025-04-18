import 'package:flutter/material.dart';

class WidgetPessoa extends StatelessWidget {
  const WidgetPessoa({key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cadastro de Pessoa')),
      body: Form(
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Nome da pessoa',
                hintText: 'Informe seu nome',
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Telefone',
                hintText: 'Informe seu telefone',
              ),
            ),
            ElevatedButton(
              child: Text('salvar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
