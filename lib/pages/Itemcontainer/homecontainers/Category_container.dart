import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../constants.dart';

class Category_container extends StatelessWidget {
  final String title;
  final String iconpath;
  const Category_container({Key? key, required this.iconpath, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Container(
        height: screensize.width * 0.15,
        width: screensize.width * 0.45,
        decoration: BoxDecoration(
            color: Colors.white12, borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            Container(
              height: screensize.width * 0.15,
              width: screensize.width * 0.15,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10)),
                  color: Colors.transparent,
                  image: DecorationImage(
                      image: NetworkImage(iconpath), fit: BoxFit.cover)),
            ),
            Container(
              height: screensize.width * 0.15,
              width: screensize.width * 0.3,
              decoration: const BoxDecoration(color: Colors.transparent),
              child: Padding(
                padding: EdgeInsets.only(
                    top: screensize.width * 0.04,
                    left: screensize.width * 0.02),
                child: Container(
                  width: screensize.width * 0.048,
                  height: screensize.width * 0.02,
                  decoration: const BoxDecoration(color: Colors.transparent),
                  child: Text(
                    title,
                    style: const TextStyle(
                        color: constwhite,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
