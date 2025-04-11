import 'package:flutter/material.dart';

class WidgetEstado extends StatelessWidget {
  const WidgetEstado({key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cadastro de Estado')),
      body: Form(
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Nome do Estado',
                hintText: 'Informe o nome do estado',
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Sigla',
                hintText: 'Informe a sigla do estado',
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
