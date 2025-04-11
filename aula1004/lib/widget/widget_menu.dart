import 'package:aula1004/configuracao/rotas.dart';
import 'package:aula1004/widget/widget_botao.dart';
import 'package:flutter/material.dart';

class WidgetMenu extends StatelessWidget {
  const WidgetMenu({key}) : super(key: key);

  Widget criarBotao(BuildContext context, String rotulo, String rota) {
    return ElevatedButton(
      child: Text(rotulo),
      onPressed: () {
        Navigator.of(context).pushNamed(rota);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        WidgetBotao(rota: Rotas.estado, rotulo: 'Cadastro de Estado'),
        WidgetBotao(rota: Rotas.cidade, rotulo: 'Cadastro de Cidade'),
        WidgetBotao(rota: Rotas.pessoa, rotulo: 'Cadastro de Pessoa'),
      ],
    );
  }
}
