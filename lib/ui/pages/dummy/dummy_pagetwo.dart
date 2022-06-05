import 'package:flutter/material.dart';

class Uhuy extends StatefulWidget {
  const Uhuy({Key? key}) : super(key: key);

  @override
  _UhuyState createState() => _UhuyState();
}

class _UhuyState extends State<Uhuy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const Text(
            'Headline',
            style: TextStyle(fontSize: 18),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 15,
              itemBuilder: (BuildContext context, int index) => const Card(
                child: Center(child: Text('Dummy Card Text')),
              ),
            ),
          ),
          const Text(
            'Demo Headline 2',
            style: const TextStyle(fontSize: 18),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemBuilder: (ctx, int) {
                return Card(
                  child: ListTile(
                      title: Text('Motivation $int'),
                      subtitle: const Text(
                          'this is a description of the motivation')),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
