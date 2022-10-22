import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sportsappui/tabpage/yourlibrary/albums_tab.dart';
import 'package:sportsappui/tabpage/yourlibrary/artist_tab.dart';
import 'package:sportsappui/tabpage/yourlibrary/playlisttab.dart';

import '../../pages/constants.dart';

class Your_library_tab extends StatelessWidget {
  const Your_library_tab({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            leading: const Padding(
                padding: EdgeInsets.all(6),
                child: CircleAvatar(
                  radius: 17,
                  backgroundImage: NetworkImage(
                      'https://assets-in.bmscdn.com/iedb/artist/images/website/poster/large/rashmika-mandanna-1076783-28-12-2016-12-20-39.jpg'),
                )),
            title: const Text(
              'Your LIbrary',
              style: TextStyle(
                  color: constwhite, fontWeight: FontWeight.bold, fontSize: 23),
            ),
            actions: [
              const Icon(
                Icons.search,
                color: constwhite,
              ),
              SizedBox(width: screensize.width * 0.05),
              const Icon(
                Icons.add,
                color: constwhite,
              ),
            ],
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(40),
              child: Align(
                alignment: Alignment.centerLeft,
                child: TabBar(
                    indicatorPadding: const EdgeInsets.all(10),
                    isScrollable: true,
                    unselectedLabelColor: constwhite,
                    unselectedLabelStyle:
                        const TextStyle(fontWeight: FontWeight.bold),
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(80),
                        border: Border.all(
                          color: constwhite,
                          width: 2,
                        )),
                    tabs:const [
                       Tab(
                        text: 'Playlists',
                      ),
                       Tab(
                        text: 'Artists',
                      ),
                       Tab(
                        text: 'Albums',
                      )
                    ]),
              ),
            ),
          ),
          body: const TabBarView(children: [
            Playlist_library(),
            Artist_library(),
            Albums_library(),
          ])),
    );
  }
}
