import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sportsappui/pages/Itemcontainer/premiumcontainer/premium_offer_container.dart';
import 'package:sportsappui/pages/constants.dart';

class Premium_tab extends StatelessWidget {
  const Premium_tab({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
            child: ListView(
      scrollDirection: Axis.vertical,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                AnimatedContainer(
                  duration: const Duration(seconds: 8),
                  width: double.infinity,
                  height: screensize.height * 0.38,
                  decoration: const BoxDecoration(
                      color: Colors.transparent,
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://mir-s3-cdn-cf.behance.net/project_modules/fs/51a7a3112297745.6011c25d0cbab.jpg'),
                          fit: BoxFit.cover)),
                ),
                Positioned(
                  left: screensize.width * 0.03,
                  top: screensize.width * 0.03,
                  child: Row(
                    children: [
                      const CircleAvatar(
                        radius: 18,
                        backgroundImage: AssetImage('assets/spotify.png'),
                      ),
                      SizedBox(
                        width: screensize.width * 0.03,
                      ),
                      const Text(
                        'Premium',
                        style: TextStyle(
                            color: constwhite,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: screensize.width * 0.03,
                  top: screensize.width * 0.68,
                  child: Row(
                    children: [
                      const Icon(
                        Icons.local_offer_sharp,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: screensize.width * 0.015,
                      ),
                      const Text(
                        'FESTIVE OFFER',
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 11),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: screensize.width * 0.03,
            ),
            const Text(
              '4 months of Premium\nfor Free',
              style: TextStyle(
                  color: constwhite, fontWeight: FontWeight.bold, fontSize: 27),
            ),
            SizedBox(
              height: screensize.width * 0.05,
            ),
            Padding(
              padding: EdgeInsets.only(left: screensize.width * 0.05),
              child: Container(
                width: screensize.width * 0.9,
                height: screensize.width * 0.13,
                decoration: BoxDecoration(
                    color: constwhite, borderRadius: BorderRadius.circular(20)),
                child: const Center(
                  child: Text(
                    'GET PREMIUM',
                    style: TextStyle(
                      color: constblack,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: screensize.width * 0.02,
            ),
            const Text(
              'From \$119/month after. Offer only for users who are new to premium.',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: screensize.width * 0.02,
            ),
            const Text(
              'Terms and conditions apply.',
              style: TextStyle(
                color: constwhite,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: screensize.width * 0.04,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                width: double.infinity,
                height: screensize.height * 0.39,
                decoration: BoxDecoration(
                    color: Colors.white12,
                    borderRadius: BorderRadius.circular(6)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: screensize.width * 0.08,
                      ),
                      const Text(
                        'Why join Premium?',
                        style: TextStyle(
                            color: constwhite,
                            fontWeight: FontWeight.bold,
                            fontSize: 23),
                      ),
                      SizedBox(
                        height: screensize.width * 0.08,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.done,
                            color: Colors.green,
                          ),
                          SizedBox(
                            width: screensize.width * 0.03,
                          ),
                          const Text(
                            'Download to listen offline without wifi',
                            style: TextStyle(
                              color: constwhite,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: screensize.width * 0.05,
                      ),
                      //2nd
                      Row(
                        children: [
                          const Icon(
                            Icons.done,
                            color: Colors.green,
                          ),
                          SizedBox(
                            width: screensize.width * 0.03,
                          ),
                          const Text(
                            'Download to listen offline without wifi',
                            style: TextStyle(
                              color: constwhite,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: screensize.width * 0.05,
                      ),
                      //3rd
                      Row(
                        children: [
                          const Icon(
                            Icons.done,
                            color: Colors.green,
                          ),
                          SizedBox(
                            width: screensize.width * 0.03,
                          ),
                          const Text(
                            'Download to listen offline without wifi',
                            style: TextStyle(
                              color: constwhite,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: screensize.width * 0.05,
                      ),
                      //4th
                      Row(
                        children: [
                          const Icon(
                            Icons.done,
                            color: Colors.green,
                          ),
                          SizedBox(
                            width: screensize.width * 0.03,
                          ),
                          const Text(
                            'Download to listen offline without wifi',
                            style: TextStyle(
                              color: constwhite,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: screensize.width * 0.05,
                      ),
                      //5th
                      Row(
                        children: [
                          const Icon(
                            Icons.done,
                            color: Colors.green,
                          ),
                          SizedBox(
                            width: screensize.width * 0.03,
                          ),
                          const Text(
                            'Download to listen offline without wifi',
                            style: TextStyle(
                              color: constwhite,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: screensize.width * 0.08,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: screensize.height * 0.1,
                decoration: BoxDecoration(
                    color: Colors.white12,
                    borderRadius: BorderRadius.circular(6)),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const[
                       Text(
                        'Spotify  Free',
                        style: TextStyle(
                            color: constwhite,
                            fontWeight: FontWeight.bold,
                            fontSize: 19),
                      ),
                       Text(
                        'CURRENT PLAN',
                        style: TextStyle(
                            color: Colors.white54,
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: screensize.width * 0.12,
            ),

            const Text(
              'Pick your Premium',
              style: TextStyle(
                  color: constwhite, fontWeight: FontWeight.bold, fontSize: 23),
            ),
            SizedBox(
              height: screensize.width * 0.06,
            ),
            //offer container
            //1
            const Premium_offer_container(
              leftheading: 'Premium\nindividual',
              rightheading2: 'FOR 4 MONTHS',
              Color1: Colors.blue,
              Color2: Color.fromARGB(255, 41, 107, 160),
              Color3: Color.fromARGB(255, 34, 84, 126),
              rightheading1: 'Free',
              mainheading:
                  'Ad-free music listening . Download\n  to listen offline . Debit and credit \n          cards accepted',
            ),
            //2
            const Premium_offer_container(
              leftheading: 'Minil',
              rightheading2: 'FOR 1 DAY',
              Color1: Colors.green,
              Color2: Color.fromARGB(255, 97, 221, 101),
              Color3: Color.fromARGB(255, 64, 241, 70),
              rightheading1: 'From \$7',
              mainheading:
                  '1 day 1 week plans.add-free\n music on mobile . Download 30\nSongs on 1 mobile device . mobile\n  only plan',
            ),
            //3
            const Premium_offer_container(
              leftheading: 'Premium Duo',
              rightheading2: 'FOR 1 MONTHS',
              Color1: Color.fromARGB(255, 132, 72, 228),
              Color2: Color.fromARGB(255, 139, 45, 216),
              Color3: Color.fromARGB(255, 101, 51, 158),
              rightheading1: 'Free',
              mainheading:
                  '2 Premium accounts. For couples\nwho live together . ad-free music\n listening . Download 10,000\nsongs/device, on upto 5 devices',
            ),
          ],
        ),
      ],
    )));
  }
}
