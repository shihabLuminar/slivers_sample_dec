import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          //sliver appbar
          SliverAppBar(
              floating: false,
              pinned: false,
              // backgroundColor: Colors.red,
              actions: [Icon(Icons.camera)],
              title: Text("data"),
              leading: Icon(Icons.menu),
              expandedHeight: 200,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.network(
                    fit: BoxFit.fitWidth,
                    "https://images.pexels.com/photos/20726113/pexels-photo-20726113/free-photo-of-a-view-of-the-city-of-siena-italy.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"),
                title: Text("Flexible space"),
              )),
          SliverToBoxAdapter(
            child: Container(
              child: Text("SliverFixedExtentList, SliverChildListDelegate"),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(15.0),
            sliver: SliverFixedExtentList(
                delegate: SliverChildListDelegate([
                  Container(
                    color: Colors.red,
                  ),
                  Container(
                    color: Colors.yellow,
                  ),
                  Container(
                    color: Colors.blue,
                  ),
                  Container(
                    color: const Color.fromARGB(255, 90, 114, 91),
                  ),
                ]),
                itemExtent: 100),
          ),
          // sliver listview
          SliverToBoxAdapter(
            child: Container(
              child: Text("SliverList, SliverChildBuilderDelegate"),
            ),
          ),
          SliverToBoxAdapter(
              child: SizedBox(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: 200,
                  color: Colors.red,
                ),
                Container(
                  width: 200,
                  color: Colors.yellow,
                ),
                Container(
                  width: 200,
                  color: Colors.blue,
                ),
                Container(
                  width: 200,
                  color: const Color.fromARGB(255, 90, 114, 91),
                ),
              ],
            ),
          )),
          SliverList(
              delegate: SliverChildBuilderDelegate(
            childCount: 10,
            (context, index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 10,
                color: Colors.green,
              ),
            ),
          )),

          SliverToBoxAdapter(
            child: Container(
              child: Text("SliverGrid, SliverChildListDelegate"),
            ),
          ),
          SliverGrid(
              delegate: SliverChildListDelegate([
                Container(
                  color: Colors.red,
                ),
                Container(
                  color: Colors.yellow,
                ),
                Container(
                  color: Colors.blue,
                ),
                Container(
                  color: const Color.fromARGB(255, 90, 114, 91),
                ),
                Container(
                  color: Colors.red,
                ),
                Container(
                  color: Colors.yellow,
                ),
                Container(
                  color: Colors.blue,
                ),
                Container(
                  color: const Color.fromARGB(255, 90, 114, 91),
                ),
                Container(
                  color: Colors.red,
                ),
              ]),
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3))
        ],
      ),
    );
  }
}
