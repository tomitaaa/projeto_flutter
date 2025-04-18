import 'package:flutter/material.dart';
import 'package:aula1004/configuracao/rotas.dart';

main() {}

class WidgetEstadoLista extends StatelessWidget {
  var estados = [
    {
      'nome': 'Paraná',
      'sigla': 'PR',
      'url':
          'https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Bandeira_do_Paran%C3%A1.svg/1200px-Bandeira_do_Paran%C3%A1.svg.png',
    },
    {
      'nome': 'São Paulo',
      'sigla': 'SP',
      'url':
          'https://upload.wikimedia.org/wikipedia/pt/b/b4/Corinthians_simbolo.png',
    },
    {
      'nome': 'bahea',
      'sigla': 'BA ',
      'url':
          'https://upload.wikimedia.org/wikipedia/commons/thumb/2/28/Bandeira_da_Bahia.svg/1200px-Bandeira_da_Bahia.svg.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lista de Estados')),
      body: ListView.builder(
        itemCount: estados.length,
        itemBuilder:
            (context, contador) => ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage('${estados[contador]['url']}'),
              ),
              title: Text('${estados[contador]['nome']}'),
              subtitle: Text('${estados[contador]['sigla']}'),
              trailing: SizedBox(
                width: 100,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(Rotas.estado);
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
                                title: const Text('Remover Estado'),
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
