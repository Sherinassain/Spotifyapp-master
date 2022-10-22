import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sportsappui/pages/Itemcontainer/homecontainers/Category_container.dart';
import 'package:sportsappui/pages/Itemcontainer/homecontainers/movie_poster_item_container.dart';
import 'package:sportsappui/pages/Itemcontainer/homecontainers/recently_played_container.dart';
import 'package:sportsappui/pages/Itemcontainer/musiccontainer/mousicui.dart';
import 'package:sportsappui/pages/constants.dart';
import 'package:sportsappui/tabpage/premium/premium_tab.dart';
import 'package:sportsappui/tabpage/search/search_tab.dart';
import 'package:sportsappui/tabpage/yourlibrary/youelibrary_tab.dart';

class Home_page extends StatefulWidget {
  Home_page({Key? key}) : super(key: key);

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  int _selectedindex = 0;
  final List pages = [
    const Home_tab(),
    const Search_tab(),
    const Your_library_tab(),
    const Premium_tab(),
  ];

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    final SizedBox constsize = SizedBox(
      height: screensize.width * 0.07,
    );

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          unselectedLabelStyle:
              const TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
          backgroundColor: Colors.black,
          selectedItemColor: Colors.white,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
          unselectedItemColor: Colors.grey,
          currentIndex: _selectedindex,
          onTap: (value) {
            setState(() {
              _selectedindex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  'assets/home.png',
                ),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/search.png'),
                ),
                label: 'Search'),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/library.png'),
                ),
                label: 'Your Library'),
            BottomNavigationBarItem(icon: Icon(Icons.diamond), label: 'Premium')
          ]),
      body: pages[_selectedindex],
    );
  }
}

class Home_tab extends StatelessWidget {
  const Home_tab({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    final SizedBox constsize = SizedBox(
      height: screensize.width * 0.07,
    );

    return SafeArea(
        child: ListView(
      scrollDirection: Axis.vertical,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: screensize.width * 0.15,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  tileMode: TileMode.clamp,
                  colors: [
                    Color.fromARGB(255, 24, 141, 236),
                    Colors.black,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children:const [
                         Text(
                          'Good afternoon',
                          style: TextStyle(
                              color: constwhite,
                              fontWeight: FontWeight.bold,
                              fontSize: 23),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const ImageIcon(
                              AssetImage('assets/bell.png'),
                              color: constwhite,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: const ImageIcon(
                              AssetImage('assets/history.png'),
                              color: constwhite,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.settings,
                              color: constwhite,
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: screensize.width * 0.04,
            ),
            Padding(
              padding:
                  const EdgeInsets.only(right: 8, top: 8, bottom: 8, left: 13),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //1st Row
                  Row(
                    children: [
                      //First item
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return const Music_page(
                                songimagepath:
                                    'https://community.spotify.com/t5/image/serverpage/image-id/104727iC92B541DB372FBC7?v=v2',
                                songtitle: 'Liked HIts',
                                subtitle: 'Various Artists');
                          }));
                        },
                        child: const Category_container(
                            iconpath:
                                'https://community.spotify.com/t5/image/serverpage/image-id/104727iC92B541DB372FBC7?v=v2',
                            title: 'Liked Songs'),
                      ),
                      SizedBox(
                        width: screensize.width * 0.02,
                      ),
                      //2nd item
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return const Music_page(
                                songimagepath:
                                    'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ad/Guthar.jpg/768px-Guthar.jpg',
                                songtitle: 'Malayalam Cover',
                                subtitle: 'Various Artists');
                          }));
                        },
                        child: const Category_container(
                            iconpath:
                                'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ad/Guthar.jpg/768px-Guthar.jpg',
                            title: 'Malayalam coversongs'),
                      ),
                    ],
                  ),
                  //2nd row
                  Row(
                    children: [
                      //First item
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return const Music_page(
                                songimagepath:
                                    'https://upload.wikimedia.org/wikipedia/en/thumb/1/1d/Sita_Ramam.jpg/220px-Sita_Ramam.jpg',
                                songtitle: 'Kannil Kannil',
                                subtitle: 'Shreya ghoshal');
                          }));
                        },
                        child: const Category_container(
                            iconpath:
                                'https://upload.wikimedia.org/wikipedia/en/thumb/1/1d/Sita_Ramam.jpg/220px-Sita_Ramam.jpg',
                            title: 'Sitha ramam Malayalam'),
                      ),
                      SizedBox(
                        width: screensize.width * 0.02,
                      ),
                      //2nd item
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return const Music_page(
                                songimagepath:
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4765_r_X-IuZ5kJtGVz51NDtm6hQw4EcoTA&usqp=CAU',
                                songtitle: 'Rangola',
                                subtitle: 'Ep jayaraj');
                          }));
                        },
                        child: const Category_container(
                            iconpath:
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4765_r_X-IuZ5kJtGVz51NDtm6hQw4EcoTA&usqp=CAU',
                            title: 'Gajani Songs'),
                      ),
                    ],
                  ),
                  //3rdrow
                  Row(
                    children: [
                      //First item
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return const Music_page(
                                songimagepath:
                                    'https://cdn.sharechat.com/2c3390a_1619093860271_sc.jpeg',
                                songtitle: 'Cover Hits',
                                subtitle: 'Various Artists');
                          }));
                        },
                        child: const Category_container(
                            iconpath:
                                'https://cdn.sharechat.com/2c3390a_1619093860271_sc.jpeg',
                            title: 'Cover songs'),
                      ),
                      SizedBox(
                        width: screensize.width * 0.02,
                      ),
                      //2nd item
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return const Music_page(
                                songimagepath:
                                    'https://a10.gaanacdn.com/gn_img/albums/kGxbn03y4r/Gxbn22raby/size_m.jpg',
                                songtitle: 'Album Hits',
                                subtitle: 'Various Artists');
                          }));
                        },
                        child: const Category_container(
                            iconpath:
                                'https://a10.gaanacdn.com/gn_img/albums/kGxbn03y4r/Gxbn22raby/size_m.jpg',
                            title: 'Album songs'),
                      ),
                    ],
                  ),

                  // jump back in containers
                  constsize,
                  const Text(
                    'jump back in',
                    style: TextStyle(
                        color: constwhite,
                        fontWeight: FontWeight.bold,
                        fontSize: 23),
                  ),
                  Container(
                    height: screensize.width * 0.57,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return const Music_page(
                                  songimagepath:
                                      'https://i2.cinestaan.com/image-bank/1500-1500/129001-130000/129770.jpg',
                                  songtitle: 'Vaseegara',
                                  subtitle: 'Bombay jayashri');
                            }));
                          },
                          child: const Movie_poster_container(
                              movieposterpath:
                                  'https://i2.cinestaan.com/image-bank/1500-1500/129001-130000/129770.jpg',
                              movietitle: 'Minnalae',
                              ablumdeatils: 'Compilation . Various Artists'),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return const Music_page(
                                  songimagepath:
                                      'https://images.jdmagicbox.com/comp/jd_social/news/2018aug08/image-217683-y1khepe2ef.jpg',
                                  songtitle: 'Aaruparanju',
                                  subtitle: 'Sujatha');
                            }));
                          },
                          child: const Movie_poster_container(
                              movieposterpath:
                                  'https://images.jdmagicbox.com/comp/jd_social/news/2018aug08/image-217683-y1khepe2ef.jpg',
                              movietitle: 'Pulivaalkalyanam',
                              ablumdeatils: 'Album . Berni lgnesious'),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return const Music_page(
                                  songimagepath:
                                      'https://i.scdn.co/image/ab67616d0000b2733cf86f352c9bc06337a77e0e',
                                  songtitle: 'Ranam Track',
                                  subtitle: 'Jakes Bejoy');
                            }));
                          },
                          child: const Movie_poster_container(
                              movieposterpath:
                                  'https://i.scdn.co/image/ab67616d0000b2733cf86f352c9bc06337a77e0e',
                              movietitle: 'Ranam(Orginal)',
                              ablumdeatils: 'EP . Jakes Bejoy'),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return const Music_page(
                                  songimagepath:
                                      'https://www.filmibeat.com/img/popcorn/movie_posters/gemini-4913.jpg',
                                  songtitle: 'Gemini Gemini',
                                  subtitle: 'EP Bharadwaj');
                            }));
                          },
                          child: const Movie_poster_container(
                              movieposterpath:
                                  'https://www.filmibeat.com/img/popcorn/movie_posters/gemini-4913.jpg',
                              movietitle: 'Gemini',
                              ablumdeatils: 'EP . Bharadwaj'),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return const Music_page(
                                  songimagepath:
                                      'https://m.media-amazon.com/images/M/MV5BMWVhNmMzYWMtNmUxMS00NzBiLTliNzUtYzk0MmM0NmQ3MjVhXkEyXkFqcGdeQXVyOTA3MTM0MTM@._V1_QL75_UY281_CR6,0,190,281_.jpg',
                                  songtitle: 'Enkeam Enkeam',
                                  subtitle: 'Gopi sunder');
                            }));
                          },
                          child: const Movie_poster_container(
                              movieposterpath:
                                  'https://m.media-amazon.com/images/M/MV5BMWVhNmMzYWMtNmUxMS00NzBiLTliNzUtYzk0MmM0NmQ3MjVhXkEyXkFqcGdeQXVyOTA3MTM0MTM@._V1_QL75_UY281_CR6,0,190,281_.jpg',
                              movietitle: 'Geetha Govindam',
                              ablumdeatils: 'EP . Gopi Sunder'),
                        ),
                      ],
                    ),
                  ),
                  //your option container
                  constsize,
                  const Text(
                    'Your top mixes',
                    style: TextStyle(
                        color: constwhite,
                        fontWeight: FontWeight.bold,
                        fontSize: 23),
                  ),
                  Container(
                    height: screensize.width * 0.57,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return const Music_page(
                                  songimagepath:
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAh9F-RWdeqQ18bSQ55cV12vjRm5lGSbEImIB4H0xg2eFDqopBd9Dvdr6nixN-8yf0LtE&usqp=CAU',
                                  songtitle: 'Bombay jayashri Hits',
                                  subtitle: 'Bombay jayashri');
                            }));
                          },
                          child: const Movie_poster_container(
                              movieposterpath:
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAh9F-RWdeqQ18bSQ55cV12vjRm5lGSbEImIB4H0xg2eFDqopBd9Dvdr6nixN-8yf0LtE&usqp=CAU',
                              movietitle: 'Swarnalatha,unni',
                              ablumdeatils: 'Mennon . Unnikrishnan'),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return const Music_page(
                                  songimagepath:
                                      'https://th-i.thgim.com/public/entertainment/music/n2cetn/article27283997.ece/alternates/LANDSCAPE_615/30tvmjakes',
                                  songtitle: 'jaakes Bejoy Mix',
                                  subtitle: 'Bijibal,harris . Artists');
                            }));
                          },
                          child: const Movie_poster_container(
                              movieposterpath:
                                  'https://th-i.thgim.com/public/entertainment/music/n2cetn/article27283997.ece/alternates/LANDSCAPE_615/30tvmjakes',
                              movietitle: 'jaakes Bejoy Mix',
                              ablumdeatils: 'Bijibal,harris . Artists'),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return const Music_page(
                                  songimagepath:
                                      'https://upload.wikimedia.org/wikipedia/commons/5/5e/MG_Sreekumar_%28Cropped%29.jpg',
                                  songtitle: 'Sadhana sagaram',
                                  subtitle: 'Shreya Ghoshal . Artists');
                            }));
                          },
                          child: const Movie_poster_container(
                              movieposterpath:
                                  'https://upload.wikimedia.org/wikipedia/commons/5/5e/MG_Sreekumar_%28Cropped%29.jpg',
                              movietitle: 'Sadhana sagaram',
                              ablumdeatils: 'Shreya Ghoshal . Artists'),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return const Music_page(
                                  songimagepath:
                                      'https://c.saavncdn.com/557/Just-Chill-Bengali-2020-20210817114945-500x500.jpg',
                                  songtitle: '24kGoldn, Rema hits',
                                  subtitle: 'Animals . And More');
                            }));
                          },
                          child: const Movie_poster_container(
                              movieposterpath:
                                  'https://c.saavncdn.com/557/Just-Chill-Bengali-2020-20210817114945-500x500.jpg',
                              movietitle: '24kGoldn, Rema',
                              ablumdeatils: 'Animals . And More'),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return const Music_page(
                                  songimagepath:
                                      'https://i.pinimg.com/originals/67/0a/a0/670aa0f33a730e74e4312417d3ce1af3.jpg',
                                  songtitle: 'Romantic hit Songs',
                                  subtitle: 'Compilation . Various Artists');
                            }));
                          },
                          child: const Movie_poster_container(
                              movieposterpath:
                                  'https://i.pinimg.com/originals/67/0a/a0/670aa0f33a730e74e4312417d3ce1af3.jpg',
                              movietitle: 'Romantic Songs',
                              ablumdeatils: 'Compilation . Various Artists'),
                        ),
                      ],
                    ),
                  ),
                  constsize,
                  const Text(
                    'Recently played',
                    style: TextStyle(
                        color: constwhite,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  Container(
                    height: screensize.width * 0.51,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return const Music_page(
                                  songimagepath:
                                      'https://community.spotify.com/t5/image/serverpage/image-id/104727iC92B541DB372FBC7?v=v2',
                                  songtitle: 'Liked Hits',
                                  subtitle: 'Compilation . Various Artists');
                            }));
                          },
                          child: const Recently_played_container(
                              movieposterpath:
                                  'https://community.spotify.com/t5/image/serverpage/image-id/104727iC92B541DB372FBC7?v=v2',
                              movietitle: 'Liked Songs',
                              ablumdeatils: 'Compilation . Various Artists'),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return const Music_page(
                                  songimagepath:
                                      'https://static.toiimg.com/thumb/msid-62472182,width-219,height-317,imgsize-96636/62472182.jpg',
                                  songtitle: 'Swamy Hits',
                                  subtitle: 'Ep Jayaraj');
                            }));
                          },
                          child: const Recently_played_container(
                              movieposterpath:
                                  'https://static.toiimg.com/thumb/msid-62472182,width-219,height-317,imgsize-96636/62472182.jpg',
                              movietitle: 'Swamy(Orginal)',
                              ablumdeatils: 'Motion . Picture'),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return const Music_page(
                                  songimagepath:
                                      'https://i0.wp.com/dktechhindi.in/wp-content/uploads/2022/07/Screenshot-2022-07-26-214839.jpg?fit=600%2C429&ssl=1',
                                  songtitle: 'Kannil Kannil',
                                  subtitle: 'Shreya ghoshal');
                            }));
                          },
                          child: const Recently_played_container(
                              movieposterpath:
                                  'https://i0.wp.com/dktechhindi.in/wp-content/uploads/2022/07/Screenshot-2022-07-26-214839.jpg?fit=600%2C429&ssl=1',
                              movietitle: 'Sita Ramam',
                              ablumdeatils: 'Compilation . Various Artists'),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return const Music_page(
                                  songimagepath:
                                      'https://i.scdn.co/image/ab67706c0000bebbcba9fdf1171e992fe89e68a0',
                                  songtitle: 'Malayalam Cover hits',
                                  subtitle: 'Compilation . Various Artists');
                            }));
                          },
                          child: const Recently_played_container(
                              movieposterpath:
                                  'https://i.scdn.co/image/ab67706c0000bebbcba9fdf1171e992fe89e68a0',
                              movietitle: 'Malayalam Cover',
                              ablumdeatils: 'Songs'),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return const Music_page(
                                  songimagepath:
                                      'https://i2.cinestaan.com/image-bank/1500-1500/129001-130000/129770.jpg',
                                  songtitle: 'Vaseegara',
                                  subtitle: 'Bombay jayashri');
                            }));
                          },
                          child: const Recently_played_container(
                              movieposterpath:
                                  'https://i2.cinestaan.com/image-bank/1500-1500/129001-130000/129770.jpg',
                              movietitle: 'Minnalae',
                              ablumdeatils: 'Compilation . Various Artists'),
                        ),
                      ],
                    ),
                  ),
                  constsize,
                  Row(
                    children:const [
                       Text(
                        'Romantic Malayalam ',
                        style: TextStyle(
                            color: constwhite,
                            fontWeight: FontWeight.bold,
                            fontSize: 23),
                      ),
                       Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 35,
                      )
                    ],
                  ),
                  Container(
                    height: screensize.width * 0.57,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return const Music_page(
                                  songimagepath:
                                      'https://m.media-amazon.com/images/M/MV5BYjg3NTg1OGQtYTcyYS00MjdmLWEwYzMtODVkZjJmN2VhMzEyXkEyXkFqcGdeQXVyMTA2ODkwNzM5._V1_.jpg',
                                  songtitle: 'Harishankar hits',
                                  subtitle: 'K.S Harishankar');
                            }));
                          },
                          child: const Movie_poster_container(
                              movieposterpath:
                                  'https://m.media-amazon.com/images/M/MV5BYjg3NTg1OGQtYTcyYS00MjdmLWEwYzMtODVkZjJmN2VhMzEyXkEyXkFqcGdeQXVyMTA2ODkwNzM5._V1_.jpg',
                              movietitle: 'K.S Harishankar',
                              ablumdeatils:
                                  'Karthik,Sujatha . Various Artists'),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return const Music_page(
                                  songimagepath:
                                      'https://i2.cinestaan.com/image-bank/1500-1500/129001-130000/129770.jpg',
                                  songtitle: 'Vaseegara',
                                  subtitle: 'Bombay jayashri');
                            }));
                          },
                          child: const Movie_poster_container(
                              movieposterpath:
                                  'https://i2.cinestaan.com/image-bank/1500-1500/129001-130000/129770.jpg',
                              movietitle: 'Minnalae',
                              ablumdeatils: 'Compilation . Various Artists'),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return const Music_page(
                                  songimagepath:
                                      'https://m.media-amazon.com/images/M/MV5BYjg3NTg1OGQtYTcyYS00MjdmLWEwYzMtODVkZjJmN2VhMzEyXkEyXkFqcGdeQXVyMTA2ODkwNzM5._V1_.jpg',
                                  songtitle: 'MG Sreekumar HITS',
                                  subtitle: 'MG Sreekumar');
                            }));
                          },
                          child: const Movie_poster_container(
                              movieposterpath:
                                  'https://m.media-amazon.com/images/M/MV5BYjg3NTg1OGQtYTcyYS00MjdmLWEwYzMtODVkZjJmN2VhMzEyXkEyXkFqcGdeQXVyMTA2ODkwNzM5._V1_.jpg',
                              movietitle: 'MG Sreekumar',
                              ablumdeatils: 'Malayalam . Songs'),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return const Music_page(
                                  songimagepath:
                                      'https://rukminim1.flixcart.com/image/416/416/kku1yfk0/movie/n/6/f/1998-dvd-bollywood-hindi-hd-movie-hindi-dil-se-bollywood-hindi-original-imagy3h45ewve96q.jpeg?q=70',
                                  songtitle: 'Sujatha HITS',
                                  subtitle: 'Sujatha');
                            }));
                          },
                          child: const Movie_poster_container(
                              movieposterpath:
                                  'https://rukminim1.flixcart.com/image/416/416/kku1yfk0/movie/n/6/f/1998-dvd-bollywood-hindi-hd-movie-hindi-dil-se-bollywood-hindi-original-imagy3h45ewve96q.jpeg?q=70',
                              movietitle: 'Sujatha, KJ',
                              ablumdeatils: 'Compilation . Various Artists'),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return const Music_page(
                                  songimagepath:
                                      'https://i2.cinestaan.com/image-bank/1500-1500/129001-130000/129770.jpg',
                                  songtitle: 'Vaseegara',
                                  subtitle: 'Bombay jayashri');
                            }));
                          },
                          child: const Movie_poster_container(
                              movieposterpath:
                                  'https://i2.cinestaan.com/image-bank/1500-1500/129001-130000/129770.jpg',
                              movietitle: 'Minnalae',
                              ablumdeatils: 'Compilation . Various Artists'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    ));
  }
}
