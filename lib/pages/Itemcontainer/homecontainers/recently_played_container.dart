import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../constants.dart';

class Recently_played_container extends StatelessWidget {
  final String movieposterpath;

  final String movietitle;
  final String ablumdeatils;
  const Recently_played_container(
      {super.key,
      required this.movieposterpath,
      required this.movietitle,
      required this.ablumdeatils});

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        child: Column(
          children: [
            SizedBox(
              height: screensize.width * 0.04,
            ),
            Container(
              height: screensize.width * 0.3,
              width: screensize.width * 0.33,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(movieposterpath), fit: BoxFit.cover),
                color: Colors.transparent,
              ),
            ),
            SizedBox(
              height: screensize.width * 0.02,
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: screensize.width * 0.033,
                  right: screensize.width * 0.037),
              child: Container(
                height: screensize.width * 0.04,
                width: screensize.width * 0.33,
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                ),
                child: Text(
                  movietitle,
                  style: const TextStyle(
                      color: constwhite,
                      fontWeight: FontWeight.bold,
                      fontSize: 13),
                ),
              ),
            ),
            SizedBox(
              height: screensize.width * 0.01,
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: screensize.width * 0.05,
                  right: screensize.width * 0.04),
              child: Container(
                height: screensize.width * 0.07,
                width: screensize.width * 0.33,
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                ),
                child: Text(
                  ablumdeatils,
                  style: const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 13),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
