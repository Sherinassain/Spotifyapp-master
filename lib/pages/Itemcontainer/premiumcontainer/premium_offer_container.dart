import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../constants.dart';

class Premium_offer_container extends StatelessWidget {
  final String leftheading;
  final String rightheading1;
  final String rightheading2;
  final Color1;
  final Color2;
  final Color3;
  final String mainheading;
  const Premium_offer_container(
      {super.key,
      required this.leftheading,
      required this.rightheading2,
      required this.Color2,
      required this.Color3,
      required this.Color1,
      required this.rightheading1,
      required this.mainheading});

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 35),
      child: Container(
        width: double.infinity,
        height: screensize.height * 0.42,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Color1,Color2,Color3]),
            borderRadius: BorderRadius.circular(6)),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: screensize.width * 0.05,
                  right: screensize.width * 0.05,
                  top: screensize.width * 0.09),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    leftheading,
                    style: const TextStyle(
                        color: constwhite,
                        fontWeight: FontWeight.bold,
                        fontSize: 19),
                  ),
                  Column(
                    children: [
                      Text(
                        rightheading1,
                        style: const TextStyle(
                            color: constwhite,
                            fontWeight: FontWeight.bold,
                            fontSize: 21),
                      ),
                      Text(
                        rightheading2,
                        style: const TextStyle(
                            color: constwhite,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screensize.width * 0.13,
            ),
            Text(
              mainheading,
              style: const TextStyle(
                color: constwhite,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: screensize.width * 0.06,
            ),
            Container(
              width: screensize.width * 0.45,
              height: screensize.width * 0.13,
              decoration: BoxDecoration(
                  color: constwhite, borderRadius: BorderRadius.circular(20)),
              child: const Center(
                child: Text(
                  'VIEW PLANS',
                  style: TextStyle(
                    color: constblack,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: screensize.width * 0.03,
            ),
            Column(
              children: const[
                 Text(
                  'Prices vary according to duration of plan.',
                  style: TextStyle(
                    color: constwhite,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                 Center(
                  child: Text(
                    'Terms and conditions apply',
                    style: TextStyle(
                      color: constwhite,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
