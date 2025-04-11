import 'package:flutter/material.dart';

class WidgetPessoa extends StatelessWidget {
  const WidgetPessoa({key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text('Voltar'),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
  }
}
