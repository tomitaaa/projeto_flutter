import 'package:flutter/material.dart';
import 'package:aula1004/configuracao/rotas.dart';

main() {}

class WidgetCidadeLista extends StatelessWidget {
  var cidades = [
    {
      'nome': 'paranavai',
      'estado': 'parana',
      'url':
          'https://upload.wikimedia.org/wikipedia/commons/1/1a/Bandeira_de_paranava%C3%AD.jpg',
    },
    {
      'nome': 'itu',
      'estado': 'sao paulo',
      'url':
          'https://upload.wikimedia.org/wikipedia/commons/thumb/4/49/Bandeira_de_Itu.jpg/2560px-Bandeira_de_Itu.jpg',
    },
    {
      'nome': 'xique xique',
      'estado': 'bahea ',
      'url':
          'https://upload.wikimedia.org/wikipedia/commons/9/97/Xique-Xique_-_bras%C3%A3o.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lista de Cidades')),
      body: ListView.builder(
        itemCount: cidades.length,
        itemBuilder:
            (context, contador) => ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage('${cidades[contador]['url']}'),
              ),
              title: Text('${cidades[contador]['nome']}'),
              subtitle: Text('${cidades[contador]['estado']}'),
              trailing: SizedBox(
                width: 100,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(Rotas.cidade);
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
                                title: const Text('Remover Cidade'),
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
