import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategorySlider extends StatelessWidget {
  const CategorySlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [

          Category(imgurl: 'images/category/bench.jpg', title: 'bench'),
          Category(imgurl: 'images/category/gym.jpg', title: 'bell'),
          Category(imgurl: 'images/category/gym-bag.jpg', title: 'bag'),
          Category(imgurl: 'images/category/gym-equipment.jpg', title: 'lift'),
          Category(imgurl: 'images/category/jumping-rope.jpg', title: 'rope'),
          Category(imgurl: 'images/category/punching-bag.jpg', title: 'punching-bag'),
          Category(imgurl: 'images/category/treadmill.jpg', title: 'tread mill'),
          Category(imgurl: 'images/category/weight.jpg', title: 'weight'),

        ],
      ),
    );
  }
}


class Category extends StatelessWidget {
  final String imgurl;
  final String title;
  const Category({Key? key, required this.imgurl, required String this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.all(2.0),
      child: InkWell(
        onTap: (){},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(
              imgurl,
              width: 100.0,
              height: _height/12,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(title),
            ),
          ),
        ),
      )
    );
  }
}
