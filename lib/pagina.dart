import 'package:flutter/material.dart';

class Pagina extends StatefulWidget {
  final List<Map<String, dynamic>> values;
  const Pagina({Key? key, required this.values}) : super(key: key);

  @override
  _PaginaState createState() => _PaginaState();
}

class _PaginaState extends State<Pagina> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text('Lista de Pessoas'),
    ));
    body:
    ListView.builder(
      itemCount: widget.values.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(5.0),
          child: ListTile(
              title: Text(widget.values[index]['nome']),
              subtitle: Text(widget.values[index]['idade']),
              leading: Icon(Icons.person),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
                side: BorderSide(
                  color: Colors.blue,
                  width: 3,
                ),
              )),
        );
      },
    );
  }
}
