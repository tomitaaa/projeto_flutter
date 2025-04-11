import 'package:flutter/material.dart';

class WidgetCidade extends StatelessWidget {
  const WidgetCidade({key}) : super(key: key);
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
