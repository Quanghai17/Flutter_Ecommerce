import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_ecommerce_online/models/Product.dart';
import 'package:shop_ecommerce_online/screens/details/components/BodyProduct.dart';
import 'package:shop_ecommerce_online/screens/home/components/body.dart';

class DetailScreen extends StatelessWidget {
  final Product product;

  const DetailScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: BodyProduct(
        productitem: product,
      ),
      // body: Column(
      //   children: <Widget>[
      //     Text('Name: ${product.title}'),
      //     Text('Price: ${product.price}'),
      //   ],
      // ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/back.svg',
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset("assets/icons/search.svg"),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset("assets/icons/cart.svg"),
          onPressed: () {},
        )
      ],
    );
  }
}
