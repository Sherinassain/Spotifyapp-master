import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sportsappui/pages/constants.dart';

class Music_page extends StatelessWidget {
  final String songimagepath;
  final String songtitle;
  final String subtitle;
  const Music_page(
      {super.key,
      required this.songimagepath,
      required this.songtitle,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(150, 34, 33, 33),
          Color.fromARGB(106, 202, 122, 149)
        ])),
        child: Column(
          children: [
            SizedBox(
              height: screensize.width * 0.038,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.keyboard_arrow_down_outlined,
                      color: constwhite,
                    ),
                  ),
                  const Icon(
                    Icons.more_vert,
                    color: constwhite,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screensize.width * 0.1,
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                width: double.infinity,
                height: screensize.height * 0.38,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    image: DecorationImage(
                        image: NetworkImage(songimagepath), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(6)),
              ),
            ),
            SizedBox(
              height: screensize.width * 0.1,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: screensize.height * 0.09,
                decoration: const BoxDecoration(color: Colors.transparent),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          songtitle,
                          style: const TextStyle(
                            color: constwhite,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: screensize.width * 0.02,
                        ),
                        Text(
                          subtitle,
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: screensize.width * 0.04),
                      child: Row(
                        children: const[
                           Icon(
                            Icons.favorite,
                            color: Colors.green,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Stack(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: LinearProgressIndicator(
                    value: 36,
                    color: Colors.grey,
                  ),
                ),
                Positioned(
                  top: screensize.width * 0.01,
                  child: Container(
                    width: screensize.width * 0.03,
                    height: screensize.width * 0.03,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: constwhite),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:const [
                   Text(
                    '0:00',
                    style: TextStyle(
                      color: Colors.white60,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                   Text(
                    '4:38',
                    style: TextStyle(
                      color: Colors.white60,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Icon(
                  Icons.shuffle,
                  color: constwhite,
                ),
                const Icon(
                  Icons.skip_previous,
                  color: constwhite,
                ),
                Container(
                  width: screensize.width * 0.15,
                  height: screensize.width * 0.15,
                  decoration:
                      const BoxDecoration(shape: BoxShape.circle, color: constwhite),
                  child: const Center(
                    child: Icon(
                      Icons.play_arrow,
                      color: constblack,
                      size: 35,
                    ),
                  ),
                ),
                const Icon(
                  Icons.skip_next,
                  color: constwhite,
                ),
                const Icon(
                  Icons.replay,
                  color: constwhite,
                ),
              ],
            ),
            SizedBox(
              height: screensize.width * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const[
                 Icon(
                  Icons.computer,
                  color: constwhite,
                ),
                 Icon(
                  Icons.menu,
                  color: constwhite,
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
