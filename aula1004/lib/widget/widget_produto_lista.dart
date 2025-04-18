import 'package:flutter/material.dart';
import 'package:aula1004/configuracao/rotas.dart';

main() {}

class WidgetProdutoLista extends StatelessWidget {
  var produtos = [
    {
      'nome': 'Ronaldo',
      'categoria': 'joga muito no corinthians',
      'url':
          'https://tribunadonorte.com.br/wp-content/uploads/2023/07/54003.jpg',
    },
    {
      'nome': 'cade o chinelo',
      'categoria': 'cade o chinelooooo',
      'url': 'https://i.ytimg.com/vi/I1-imY24550/hqdefault.jpg',
    },
    {
      'nome': 'eu nao intindi o que ela falou',
      'categoria': 'WOOOOOOOOOOW',
      'url':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdTpHrJToV5SskhrUHKoIl0JU9TvGP4u94Lg&s',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lista de Produtos')),
      body: ListView.builder(
        itemCount: produtos.length,
        itemBuilder:
            (context, contador) => ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage('${produtos[contador]['url']}'),
              ),
              title: Text('${produtos[contador]['nome']}'),
              subtitle: Text('${produtos[contador]['categoria']}'),
              trailing: SizedBox(
                width: 100,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(Rotas.produto);
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
                                title: const Text('Remover Produto'),
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
