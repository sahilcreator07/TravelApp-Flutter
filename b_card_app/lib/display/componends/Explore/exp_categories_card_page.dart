import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'explore_categories.dart';

List<StaggeredTile> _staggeredTiles = const <StaggeredTile>[
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(2, 3),
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(2, 3),
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(2, 3),
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(2, 3),
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(2, 3),
];

List<Widget> _tiles = const <Widget>[
  const _ImageTile('assets/travel1.jpg'),
  const _ImageTile('assets/travel2.jpg'),
  const _ImageTile('assets/travel3.jpg'),
  const _ImageTile('assets/travel4.jpg'),
  const _ImageTile('assets/travel5.jpg'),
  const _ImageTile('assets/travel6.jpg'),
  const _ImageTile('assets/travel7.jpg'),
  const _ImageTile('assets/travel1.jpg'),
  const _ImageTile('assets/travel2.jpg'),
  const _ImageTile('assets/travel3.jpg'),
];

class ImageTile extends StatelessWidget {
  // ImageTile({required this.exploreNewPlaceDetails});
  // final ExploreNewPlaceDetails exploreNewPlaceDetails;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // title: Text(exploreNewPlaceDetails.name),
          backgroundColor: Colors.black,
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.black,
          child: Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: StaggeredGridView.count(
                crossAxisCount: 4,
                staggeredTiles: _staggeredTiles,
                children: _tiles,
                mainAxisSpacing: 4.0,
                crossAxisSpacing: 4.0,
              )),
        ));
  }
}

class _ImageTile extends StatelessWidget {
  const _ImageTile(this.gridImage);

  final gridImage;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0x00000000),
      elevation: 3.0,
      child: GestureDetector(
        onTap: () {
          print("hello");
        },
        child: Container(
            decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(gridImage),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(const Radius.circular(10.0)),
        )),
      ),
    );
  }
}
