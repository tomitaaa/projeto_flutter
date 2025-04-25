import 'package:flutter/material.dart';

class Lista extends StatefulWidget {
  @override
  _Lista createState() {
    return _Lista();
  }
}

class _Lista extends State<Lista> {
  var nomes = ['Joana', 'Paulo', "Josney", 'Robson'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista'),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                nomes.add('novo nome');
              });

              print('deu certo  ${nomes.length}');
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: nomes.length,
        itemBuilder: (context, i) => Text(nomes[i]),
      ),
    );
  }
}
