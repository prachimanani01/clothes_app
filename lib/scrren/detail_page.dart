import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../utils/product/products.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool isLike = false;

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> pro =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    double h = MediaQuery.sizeOf(context).height;
    double w = MediaQuery.sizeOf(context).width;
    TextScaler textScaler = MediaQuery.textScalerOf(context);
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: h * 0.55,
              width: w,
              color: const Color(0xffeee5db),
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(Icons.arrow_back),
                        ),
                      ),
                      Text(
                        "Details page",
                        style: TextStyle(
                          fontSize: textScaler.scale(22),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          isLike = !isLike;
                          setState(() {});
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: (isLike)
                              ? const Icon(
                                  Icons.favorite,
                                  color: Colors.brown,
                                )
                              : const Icon(Icons.favorite_border),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        height: h * 0.44,
                        width: w,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(pro['thumbnail']),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                    ],
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    pro['title'],
                    style: TextStyle(
                      fontSize: textScaler.scale(25),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  Text(
                    "Product Details",
                    style: TextStyle(
                      fontSize: textScaler.scale(22),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.01,
                  ),
                  Text(
                    pro['description'],
                    style: TextStyle(
                      fontSize: textScaler.scale(16),
                      color: Colors.grey,
                    ),
                  ),
                  const Divider(),
                  RatingBarIndicator(
                    rating: double.parse(pro['rating'].toString()),
                    itemSize: 20,
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: h * 0.13,
              width: w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border(
                  top: BorderSide(
                    color: Colors.grey.shade300,
                    width: 1.8,
                  ),
                ),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: w * 0.05,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Total Price",
                          style: TextStyle(
                            fontSize: textScaler.scale(20),
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          "\$ ${pro['price']}.00",
                          style: TextStyle(
                            fontSize: textScaler.scale(20),
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: GestureDetector(
                      onTap: () {
                        if (!cartList.contains(pro)) {
                          cartList.add(pro);
                        }

                        log("Cart List : $cartList");
                      },
                      child: Container(
                        height: h * 0.06,
                        decoration: BoxDecoration(
                          color: Colors.brown,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          " Add to Cart",
                          style: TextStyle(
                            fontSize: textScaler.scale(20),
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: w * 0.1,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
