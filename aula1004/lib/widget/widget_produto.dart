import 'package:flutter/material.dart';

class WidgetProduto extends StatelessWidget {
  const WidgetProduto({key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cadastro de Produto')),
      body: Form(
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Nome do Produto',
                hintText: 'Informe o nome do produto',
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Categoria',
                hintText: 'Informe a categoria do produto',
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
