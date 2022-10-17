import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class GridViewDemo extends StatelessWidget {
  const GridViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Grid View Builder'),
        centerTitle: true,
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 16, mainAxisExtent: 16),
        itemBuilder: (_, index) => Card(index: index),
        itemCount: 50,
      ),
    );
  }
}

class Card extends StatelessWidget {
  const Card({required this.index, super.key});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      alignment: Alignment.center,
      color: Colors.yellow,
      child: Text('Item: $index'),
    );
  }
}
