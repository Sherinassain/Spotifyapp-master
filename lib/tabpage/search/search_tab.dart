import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sportsappui/tabpage/search/search_item_container.dart';

import '../../pages/constants.dart';

class Search_tab extends StatelessWidget {
  const Search_tab({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    final SizedBox searchboxspace = SizedBox(
      width: screensize.width * 0.03,
    );

    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: screensize.width * 0.1,
              ),
              const Text(
                'Search',
                style: TextStyle(
                    color: constwhite,
                    fontWeight: FontWeight.bold,
                    fontSize: 26),
              ),
              SizedBox(
                height: screensize.width * 0.07,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: const TextField(
                  decoration: InputDecoration(
                    fillColor: constwhite,
                    filled: true,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    hintText: 'Artists, songs, or,podcasts',
                    hintStyle: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: screensize.width * 0.07,
              ),
              const Center(
                child: Text(
                  'Browse all',
                  style: TextStyle(
                      color: constwhite,
                      fontWeight: FontWeight.bold,
                      fontSize: 23),
                ),
              ),
              SizedBox(
                height: screensize.width * 0.03,
              ),
              Column(
                children: [
                  //1 item
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      children: [
                        const Search_item_container(
                            imagepath:
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKo6nwl_fPIZy2UAMgbAxdZsPb-SY7iFe-rg&usqp=CAU',
                            title: 'Podcasts',
                            Color: Color.fromARGB(255, 197, 64, 108)),
                        searchboxspace,
                        const Search_item_container(
                            imagepath:
                                'https://cdn2.vectorstock.com/i/1000x1000/11/51/country-music-poster-background-with-musical-vector-21661151.jpg',
                            title: ' Radio',
                            Color: Colors.blue),
                      ],
                    ),
                  ),
                  //2 item
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      children: [
                        const Search_item_container(
                            imagepath:
                                'https://marketplace.canva.com/EADanxjgr04/1/0/1131w/canva-black-and-cream-music-notes-jazz-poster-YHLY3XmQ-0k.jpg',
                            title: 'Mood',
                            Color: Colors.green),
                        searchboxspace,
                        const Search_item_container(
                            imagepath:
                                'https://cdn3.vectorstock.com/i/1000x1000/09/02/abstract-vintage-retro-music-poster-guitar-vector-10550902.jpg',
                            title: 'Hindi',
                            Color: Colors.grey),
                      ],
                    ),
                  ),
                  //3 item
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      children: [
                        const Search_item_container(
                            imagepath:
                                'https://pub-static.fotor.com/assets/projects/pages/158ea8a31c9f429188476053d22195b6/pink-guitar-rock-music--c4117ae06a534802a3c8aa32f22a1332.jpg',
                            title: 'Punjabi',
                            Color: Colors.greenAccent),
                        searchboxspace,
                        const Search_item_container(
                            imagepath:
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRE29nNaY6Dch-QcPEneW-uWvU0BH2VJAXwUQ&usqp=CAU',
                            title: 'Tamil',
                            Color: Colors.lightBlue),
                      ],
                    ),
                  ),
                  //4 item
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      children: [
                        const Search_item_container(
                            imagepath:
                                'https://m.media-amazon.com/images/I/61-psIi1cbL._SY450_.jpg',
                            title: 'Telugu',
                            Color: Colors.indigoAccent),
                        searchboxspace,
                        const Search_item_container(
                            imagepath:
                                'https://marketplace.canva.com/EAFMd4a7yDg/1/0/1131w/canva-yellow-blue-gradient-illustration-event-poster-H_ETPCrKXpc.jpg',
                            title: 'Charts',
                            Color: Color.fromARGB(255, 226, 212, 168)),
                      ],
                    ),
                  ),
                  //5 item
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      children: [
                        const Search_item_container(
                            imagepath:
                                'https://d3jmn01ri1fzgl.cloudfront.net/photoadking/webp_thumbnail/5fc77fff494a0_template_image_1606909951.webp',
                            title: 'Live Events',
                            Color: Colors.cyanAccent),
                        searchboxspace,
                        const Search_item_container(
                            imagepath:
                                'https://t3.ftcdn.net/jpg/02/95/38/04/360_F_295380434_48oaafUhpXUfaqHZBhOilHIX5kI313xw.jpg',
                            title: 'Pop',
                            Color: Colors.brown),
                      ],
                    ),
                  ),
                  //6 item
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      children: [
                        const Search_item_container(
                            imagepath:
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnKN1OgGrAbMnO-z_JhT8Sf1nsMZhoIJE3hQ&usqp=CAU',
                            title: 'indie',
                            Color: Colors.deepPurple),
                        searchboxspace,
                        const Search_item_container(
                            imagepath:
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQ7Kq9_stknRoHXHRk_H7_dwum0GHTXNd0TQ&usqp=CAU',
                            title: 'Trending',
                            Color: Colors.greenAccent),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    ));
  }
}
