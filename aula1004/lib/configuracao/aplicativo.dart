import 'package:flutter/material.dart';
import 'package:aula1004/widget/widget_menu.dart';
import 'package:aula1004/widget/widget_estado.dart';
import 'package:aula1004/widget/widget_cidade.dart';
import 'package:aula1004/widget/widget_pessoa.dart';
import 'package:aula1004/configuracao/rotas.dart';

class Aplicativo extends StatelessWidget {
  const Aplicativo({key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aula Widget',
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      initialRoute: Rotas.home,
      routes: {
        Rotas.home: (context) => const WidgetMenu(),
        Rotas.estado: (context) => const WidgetEstado(),
        Rotas.cidade: (context) => const WidgetCidade(),
        Rotas.pessoa: (context) => const WidgetPessoa(),
      },
    );
  }
}
