import 'package:flutter/material.dart';

class WidgetCidade extends StatelessWidget {
  const WidgetCidade({key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cadastro de Cidade')),
      body: Form(
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Nome da Cidade',
                hintText: 'Informe o nome da cidade',
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Estado',
                hintText: 'Informe a qual Estado é',
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
