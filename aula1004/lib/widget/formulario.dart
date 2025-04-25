import 'package:flutter/material.dart';

class Formulario extends StatefulWidget {
  @override
  _Formulario createState() {
    return _Formulario();
  }
}

class _Formulario extends State<Formulario> {
  final _formKey = GlobalKey<FormState>();
  // var _campoNome = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Formulario')),
      body: Form(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(label: Text('nome')),
              // controller: _campoNome,
              // onSaved: (newValue) => _nome = _campoNome.text,
              validator: (valorDigitado) {
                if (valorDigitado == null || valorDigitado.length < 3) {
                  return 'nome deve ter 3 caracteres';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(label: Text('e-mail')),
              validator: (valorDigitado) {
                if (valorDigitado == null || valorDigitado.length < 3) {
                  return 'e-mail deve possuir @';
                }
                return null;
              },
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  print('deu certo!');
                } else {
                  print('deu errado!');
                }
              },
              child: const Text('Salvar'),
            ),
          ],
        ),
      ),
    );
  }
}
