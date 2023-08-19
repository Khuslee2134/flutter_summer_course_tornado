import 'package:flutter/material.dart';
import 'package:icode_gram/components/watch_story.dart';

import 'components/add_story.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // child: Padding(
        //   padding: EdgeInsets.only(left: 16, top: 14),
        child: CustomScrollView(
          slivers: <Widget>[
            SliverList(
              delegate: SliverChildListDelegate([
                SizedBox(
                  height: 130,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      AddStory(),
                      SizedBox(
                        height: 130,
                        width: 830,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 10,
                            itemBuilder: (context, index) {
                              return SizedBox(
                                  width: 80,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      WatchStory(),
                                    ],
                                  ));
                            }),
                      ),
                    ],
                  ),
                ),
              ]),
            )
          ],
        ),
        // Column(
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: [
        //     Text(
        //       'iCodegram',
        //       style: TextStyle(
        //         fontFamily: 'Lobster',
        //         color: Colors.white,
        //         fontSize: 25.6,
        //         fontWeight: FontWeight.w400,
        //       ),
        //     ),
        //      SizedBox(
        //        height:21.32 ,
        //      ),
        //     SliverToBoxAdapter(
        //       child: SizedBox(
        //         height: 100.0,
        //         child: ListView.builder(
        //           scrollDirection: Axis.horizontal,
        //           itemCount: 10,
        //           itemBuilder: (context, index) {
        //             return
        //           },
        //         ),
        //       ),
        //     ),
        //
        //
        //   ],
        // ),
      ),
      //),
    );
  }
}
