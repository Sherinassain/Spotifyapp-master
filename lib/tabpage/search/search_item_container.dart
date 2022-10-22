import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../pages/constants.dart';

class Search_item_container extends StatelessWidget {
  final String imagepath;
  final String title;
  final Color;

  const Search_item_container(
      {super.key,
      required this.imagepath,
      required this.title,
      required this.Color});

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    return Container(
      height: screensize.width * 0.25,
      width: screensize.width * 0.462,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        color: Color,
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              right: screensize.width * 0.2,
            ),
            child: Text(
              title,
              style: const TextStyle(
                  color: constwhite, fontWeight: FontWeight.bold, fontSize: 17),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: screensize.width * 0.24,
              top: screensize.width * 0.007,
            ),
            child: Transform.rotate(
              angle: 18 * pi / 180,
              child: Container(
                margin: const EdgeInsets.only(
                  left: 18,
                ),
                width: screensize.width * 0.14,
                height: screensize.width * 0.17,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                      image: NetworkImage(imagepath), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
