import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../pages/Itemcontainer/musiccontainer/mousicui.dart';
import '../../pages/Itemcontainer/yourlib_containers/recently_played.dart';
import '../../pages/constants.dart';

class Artist_library extends StatelessWidget {
  const Artist_library({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    final SizedBox recentllyplayeditemsize = SizedBox(
      height: screensize.width * 0.03,
    );
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            children: [
              SizedBox(
                height: screensize.width * 0.06,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: screensize.width * 0.05,
                        height: screensize.width * 0.05,
                        decoration: const BoxDecoration(
                          color: Colors.transparent,
                        ),
                        child: const ImageIcon(
                          AssetImage('assets/up-down.png'),
                          color: constwhite,
                        ),
                      ),
                      SizedBox(
                        width: screensize.width * 0.05,
                      ),
                      const Text(
                        'Recently played',
                        style: TextStyle(
                            color: constwhite,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ],
                  ),
                  Row(
                    children:const [
                       Icon(
                        Icons.apps,
                        color: constwhite,
                      ),
                    ],
                  )
                ],
              ),
              recentllyplayeditemsize,
              //playlist item
                GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const Music_page(
                        songimagepath:
                            'https://static.toiimg.com/photo/msid-77724551/77724551.jpg',
                        songtitle: 'Kannada Hits',
                        subtitle: 'Various Artists');
                  }));
                },
                child: const Recently_played(
                    imagepath:
                        'https://static.toiimg.com/photo/msid-77724551/77724551.jpg',
                    title: 'Kannada Songs',
                    albumdeatils: 'Playlist . 430 songs'),
              ),
              //7
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const Music_page(
                        songimagepath:
                            'https://m.media-amazon.com/images/M/MV5BNDgzN2UwY2YtODNhMy00OTA1LWJiZjEtMmRhMzJhM2RhYjIwXkEyXkFqcGdeQXVyNTkzNjEyMjI@._V1_.jpg',
                        songtitle: 'Ambalakara',
                        subtitle: 'MG Sreekumar');
                  }));
                },
                child: const Recently_played(
                    imagepath:
                        'https://m.media-amazon.com/images/M/MV5BNDgzN2UwY2YtODNhMy00OTA1LWJiZjEtMmRhMzJhM2RhYjIwXkEyXkFqcGdeQXVyNTkzNjEyMjI@._V1_.jpg',
                    title: 'Black movie Songs',
                    albumdeatils: 'Playlist . 4 songs'),
              ),
                 GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const Music_page(
                        songimagepath:
                            'https://community.spotify.com/t5/image/serverpage/image-id/104727iC92B541DB372FBC7?v=v2',
                        songtitle: 'Liked Hits',
                        subtitle: 'Various Artists');
                  }));
                },
                child: const Recently_played(
                    imagepath:
                        'https://community.spotify.com/t5/image/serverpage/image-id/104727iC92B541DB372FBC7?v=v2',
                    title: 'Liked Songs',
                    albumdeatils: 'Playlist . 292 songs'),
              ),
              //2
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const Music_page(
                        songimagepath:
                            'https://musiccanada.files.wordpress.com/2015/12/best-songs-of-2015-collage-5x6-copy.jpg',
                        songtitle: 'Fav Hits',
                        subtitle: 'Various Artists');
                  }));
                },
                child: const Recently_played(
                    imagepath:
                        'https://musiccanada.files.wordpress.com/2015/12/best-songs-of-2015-collage-5x6-copy.jpg',
                    title: 'Fav Songs',
                    albumdeatils: 'Playlist . 800 songs'),
              ),
                GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const Music_page(
                        songimagepath:
                            'https://i.scdn.co/image/ab67616d0000b2733659f3d4bdbefb11e0398884',
                        songtitle: 'Prem poojari',
                        subtitle: 'Kj yesudas');
                  }));
                },
                child: const Recently_played(
                    imagepath:
                        'https://i.scdn.co/image/ab67616d0000b2733659f3d4bdbefb11e0398884',
                    title: 'Prem poojari',
                    albumdeatils: 'Album . Mohan Sithara'),
              ),
              //4
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const Music_page(
                        songimagepath:
                            'https://i.scdn.co/image/ab67616d0000b2733670758e98ecb67d5b44d2c3',
                        songtitle: 'Malayalam Hits',
                        subtitle: 'Various Artists');
                  }));
                },
                child: const Recently_played(
                    imagepath:
                        'https://i.scdn.co/image/ab67616d0000b2733670758e98ecb67d5b44d2c3',
                    title: 'Malayalam Songs',
                    albumdeatils: 'Playlist . 450 songs'),
              ),
              //5
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const Music_page(
                        songimagepath:
                            'https://dc-cdn.s3-ap-southeast-1.amazonaws.com/dc-Cover-b4ko28imhhqvv72ko3ucumjdq5-20160531094314.jpeg',
                        songtitle: 'Surya Hits',
                        subtitle: 'Various Artists');
                  }));
                },
                child: const Recently_played(
                    imagepath:
                        'https://dc-cdn.s3-ap-southeast-1.amazonaws.com/dc-Cover-b4ko28imhhqvv72ko3ucumjdq5-20160531094314.jpeg',
                    title: 'Surya Songs',
                    albumdeatils: 'Playlist . 300 songs'),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
