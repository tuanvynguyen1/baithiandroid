import 'package:flutter/material.dart';

import 'package:smooth_star_rating/smooth_star_rating.dart';

class ProductDetails extends StatefulWidget {
  final product;
  const ProductDetails({Key? key, this.product}) : super(key: key);

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
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
      body: ListView(
        children: [
          Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.network(widget.product.img),
              ),
              footer: Container(
                color: Colors.white,
                child: ListTile(
                  leading: Text('${widget.product.name}'),
                  title: Row(
                    children: [
                      Expanded(
                        child: Text('\$${widget.product.price}'),
                      )
                    ],
                  ),
                ),
              ),
            ),

          ),
          Row(
            children: [
                Expanded(
                  child: MaterialButton(
                    onPressed: (){},
                    color: Colors.red,
                    textColor: Colors.white,
                    elevation: 0.2,
                    child: Text('buy now'),
                  ),
                ),
              IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.shopping_cart,color: Colors.red)
              ),
              IconButton(
                onPressed: (){},
                icon: Icon(Icons.favorite, color: Colors.red)
              )
            ],
          ),
          Row(
            children: [
              Text('Rate: '),
              SmoothStarRating(
                rating: double.parse(widget.product.rating),
                isReadOnly: false,
                size: 30,
                filledIconData: Icons.star,
                halfFilledIconData: Icons.star_half,
                defaultIconData: Icons.star_border,
                starCount: 5,
                allowHalfRating: true,
                spacing: 2.0,
                onRated: (value) {
                  print("rating value -> $value");
                  // print("rating value dd -> ${value.truncate()}");
                },
              ),
            ],
          ),
          ListTile(
            title: Text('Product Detail'),
            subtitle: Text(widget.product.details),
          )
        ],
      ),
    );
  }
}


