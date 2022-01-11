import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:quanlydctt/products_list.dart';

import 'category_slider.dart';


class homeView extends StatelessWidget {
  const homeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: home(),
    );
  }
}


class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
} 

class _homeState extends State<home> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text('Dụng cụ thể thao'),
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              )
          ),
          IconButton(
              onPressed: (){},
              icon: Icon(
                  Icons.shopping_cart,
                color: Colors.white,
              )
          ),
        ],

      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                accountName: Text('Nguyễn Hữu Tuấn Vỹ') ,
                accountEmail: Text('tuanvynguyen1@gmail.com'),
                currentAccountPicture: GestureDetector(
                  child: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.person, color: Colors.white)
                  )
                ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home),
              )
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Account'),
                leading: Icon(Icons.person)
              )
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Categorise'),
                leading: Icon(Icons.dashboard),
              )
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Favorite'),
                leading: Icon(Icons.favorite, color: Colors.red),
              )
            ),
            Divider(),
            InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('Setting'),
                  leading: Icon(Icons.settings, color: Colors.blueGrey),
                )
            ),
            InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('About'),
                  leading: Icon(Icons.help, color: Colors.blue),
                ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Sign Out'),
                leading: Icon(Icons.logout),
              )
            )
          ],
        )
      ),
      body: ListView(
        children: [
          carousel,
          Padding(padding: EdgeInsets.all(8.0), child: Text("Category")),
          CategorySlider(),
          Padding(padding: EdgeInsets.all(8.0), child: Text("Products")),
          ProductsList(),
        ],
      ),
    );

  }
  Widget carousel = new Container(
    height: 200,
    child: Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage('images/carousel1.jpg'),
        AssetImage('images/carousel2.jpg'),
        AssetImage('images/carousel3.jpg')
      ],
      autoplay: false,
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(microseconds: 1000),
      dotSize: 3.0,
    )
  );
}
