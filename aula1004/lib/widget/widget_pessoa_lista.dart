import 'package:flutter/material.dart';
import 'package:aula1004/configuracao/rotas.dart';

main() {}

class WidgetPessoaLista extends StatelessWidget {
  var pessoas = [
    {
      'nome': 'Ronaldo',
      'telefone': '(12) 123456789',
      'url':
          'https://cdn.pixabay.com/photo/2022/06/08/02/33/naruto-7249531_960_720.jpg',
    },
    {
      'nome': 'Cleber',
      'telefone': '(12) 123456789',
      'url':
          'https://cdn.pixabay.com/photo/2016/03/31/20/11/avatar-1295575_1280.png',
    },
    {
      'nome': 'Josney',
      'telefone': '(12) 123456789',
      'url':
          'https://cdn.pixabay.com/photo/2016/04/01/10/04/amusing-1299761_960_720.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lista de Pessoas')),
      body: ListView.builder(
        itemCount: pessoas.length,
        itemBuilder:
            (context, contador) => ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage('${pessoas[contador]['url']}'),
              ),
              title: Text('${pessoas[contador]['nome']}'),
              subtitle: Text('${pessoas[contador]['telefone']}'),
              trailing: SizedBox(
                width: 100,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(Rotas.pessoa);
                      },
                      icon: const Icon(Icons.edit),
                      color: Colors.green,
                    ),
                    IconButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder:
                              (ctx) => AlertDialog(
                                title: const Text('Remover Pessoa'),
                                content: const Text('Negado!'),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(ctx).pop();
                                    },
                                    child: const Text('OK'),
                                  ),
                                ],
                              ),
                        );
                      },
                      icon: const Icon(Icons.delete),
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
            ),
      ),
    );
  }
}
