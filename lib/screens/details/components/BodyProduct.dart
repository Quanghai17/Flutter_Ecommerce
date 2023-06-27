import 'package:flutter/material.dart';
import 'package:shop_ecommerce_online/constants.dart';
import 'package:shop_ecommerce_online/models/Product.dart';
import 'package:shop_ecommerce_online/screens/details/components/Product_Title_With_Image.dart';

class BodyProduct extends StatelessWidget {
  final Product productitem;
  const BodyProduct({Key? key, required this.productitem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(children: <Widget>[
        SizedBox(
          height: size.height,
          child: Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: size.height * 0.3),
                padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultPaddin,
                    right: kDefaultPaddin),
                // height: 500,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25))),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Wrap(
                            children: [
                              Text("color: "),
                              Container(
                                margin: EdgeInsets.only(
                                    top: kDefaultPaddin / 2,
                                    right: kDefaultPaddin / 4),
                                padding: EdgeInsets.all(2.5),
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: Color.fromARGB(255, 0, 0, 0))),
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 2, 119, 134),
                                      shape: BoxShape.circle),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    top: kDefaultPaddin / 2,
                                    right: kDefaultPaddin / 4),
                                padding: EdgeInsets.all(2.5),
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: Color.fromARGB(255, 0, 0, 0))),
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 60, 202, 4),
                                      shape: BoxShape.circle),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    top: kDefaultPaddin / 2,
                                    right: kDefaultPaddin / 4),
                                padding: EdgeInsets.all(2.5),
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: Color.fromARGB(255, 0, 0, 0))),
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 235, 231, 26),
                                      shape: BoxShape.circle),
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: RichText(
                              text: TextSpan(
                                  style: TextStyle(
                                      color: kTextColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                  children: [
                                TextSpan(
                                  text: "Size: \n",
                                ),
                                TextSpan(text: "${productitem.size} cm")
                              ])),
                        )
                      ],
                    )
                  ],
                ),
              ),
              ProductTitleWithImage(productitem: productitem)
            ],
          ),
        )
      ]),
    );
  }
}
