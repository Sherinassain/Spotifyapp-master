import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../constants.dart';

class Recently_played extends StatelessWidget {
  final String imagepath;
  final String title;
  final String albumdeatils;
  const Recently_played(
      {super.key,
      required this.imagepath,
      required this.title,
      required this.albumdeatils});

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Container(
            height: screensize.width * 0.2,
            width: screensize.width * 0.2,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(imagepath), fit: BoxFit.cover),
              color: Colors.transparent,
            ),
          ),
          SizedBox(
            width: screensize.width * 0.03,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: screensize.width * 0.05,
                width: screensize.width * 0.7,
                decoration: const BoxDecoration(color: Colors.transparent),
                child: Text(
                  title,
                  style: const TextStyle(
                      color: constwhite,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
              ),
              SizedBox(
                height: screensize.width * 0.015,
              ),
              Container(
                height: screensize.width * 0.05,
                width: screensize.width * 0.7,
                decoration: const BoxDecoration(color: Colors.transparent),
                child: Text(
                  albumdeatils,
                  style: const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
