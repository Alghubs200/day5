import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class StackDemo extends StatelessWidget {
  const StackDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[600],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 35,
          ),
          Container(
            width: 400,
            height: 500,
            color: Colors.red,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  left: 20,
                  top: -13,
                  child: Container(
                    child: Text(
                      'stack',
                      textAlign: TextAlign.end,
                      style: TextStyle(fontSize: 23),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(33)),
                    width: 250,
                    height: 55,
                  ),
                ),
                Positioned(
                    left: 100,
                    top: -20,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12))),
                      width: 140,
                      height: 55,
                    )),
                Positioned(
                    left: 45,
                    bottom: -27,
                    child: Container(
                      child: Icon(
                        Icons.star,
                        color: Colors.black,
                        size: 40,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(23)),
                      width: 50,
                      height: 50,
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
