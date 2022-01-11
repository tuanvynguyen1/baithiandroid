import 'package:flutter/material.dart';
import 'package:quanlydctt/product_details.dart';
import 'package:quanlydctt/products.dart';
import 'package:quanlydctt/products_data.dart';

class ProductsList extends StatefulWidget {
  const ProductsList({Key? key}) : super(key: key);

  @override
  _ProductsListState createState() => _ProductsListState();
}

class _ProductsListState extends State<ProductsList> {
  late Future<List<Products>> list;

  @override
  void initState() {
    super.initState();

    list = fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: list,
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.hasData) {
            var data = snapshot.data;
            return Padding(
              padding: EdgeInsets.all(10.0),
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemCount: data.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return ProductView(
                      product: data[index],
                    );
                  }),
            );
          } else {
            return CircularProgressIndicator();
          }
        });
  }
}

class ProductView extends StatelessWidget {
  final product;

  const ProductView({Key? key, this.product})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Hero(
            tag: product.name,
            child: Material(
                child: InkWell(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ProductDetails(
                          product: product,
                        ))),
                    child: GridTile(
                      footer: Container(
                        color: Colors.white70,
                        child: ListTile(
                            leading: Text(
                              product.name,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 12),
                            ),
                            title: Text('\$${product.price}',
                                style: TextStyle(fontSize: 11))),
                      ),
                      child: Image.network(
                        product.img,
                        fit: BoxFit.cover,
                      ),
                    )
                )
            )
        )
    );
  }
}
