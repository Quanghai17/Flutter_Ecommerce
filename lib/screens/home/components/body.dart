import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shop_ecommerce_online/constants.dart';
import 'package:shop_ecommerce_online/models/Product.dart';
import 'package:shop_ecommerce_online/screens/details/Detail_Screen.dart';
import 'package:shop_ecommerce_online/screens/home/components/Item_cart.dart';
import 'package:shop_ecommerce_online/screens/home/components/categorries.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
            "Women",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 7, 7, 7)),
          ),
        ),
        Categories(),
        Expanded(
            child: GridView.builder(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          itemCount: products.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: kDefaultPaddin,
            crossAxisSpacing: kDefaultPaddin,
            childAspectRatio: 0.75,
          ),
          itemBuilder: (context, index) => ItemCart(
            product: products[index],
            press: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(
                    product: products[index],
                  ),
                )),
          ),
        ))
      ],
    );
  }
}
