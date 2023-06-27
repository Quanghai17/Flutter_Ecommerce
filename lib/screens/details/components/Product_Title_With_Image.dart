import 'package:flutter/material.dart';
import 'package:shop_ecommerce_online/constants.dart';
import 'package:shop_ecommerce_online/models/Product.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    super.key,
    required this.productitem,
  });

  final Product productitem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Hand Bag",
            style: TextStyle(color: Colors.white),
          ),
          Text(productitem.title,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30)),
          Row(
            children: <Widget>[
              RichText(
                  text: TextSpan(children: [
                TextSpan(text: "price\n"),
                TextSpan(
                    text: "\$${productitem.price}",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20))
              ])),
              SizedBox(
                width: kDefaultPaddin,
              ),
              Expanded(
                child: Image.asset(
                  productitem.image,
                  fit: BoxFit.fitWidth,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
