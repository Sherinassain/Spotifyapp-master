import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../constants.dart';

class Movie_poster_container extends StatelessWidget {
  final String movieposterpath;
  
  final String movietitle;
  final String ablumdeatils;
  const Movie_poster_container(
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
              height: screensize.width * 0.35,
              width: screensize.width * 0.4,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(movieposterpath), fit: BoxFit.cover),
                color: Colors.transparent,
              ),
            ),
            SizedBox(
              height: screensize.width * 0.02,
            ),
            Container(
              height: screensize.width * 0.04,
              width: screensize.width * 0.4,
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
            SizedBox(
              height: screensize.width * 0.01,
            ),
            Container(
              height: screensize.width * 0.07,
              width: screensize.width * 0.4,
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
          ],
        ),
      ),
    );
  }
}
