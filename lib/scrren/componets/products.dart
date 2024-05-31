import 'dart:developer';



import 'package:flutter/material.dart';

import '../../utils/globls/gloabls.dart';
import '../../utils/product/products.dart';



Widget myProduct({
  required BuildContext context,
  required String category,
  double min = 0,
  double max = 2000,
}) {
  double h = MediaQuery.sizeOf(context).height;
  double w = MediaQuery.sizeOf(context).width;
  TextScaler textScale = MediaQuery.textScalerOf(context);
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    physics: const BouncingScrollPhysics(),
    child: Row(
      children: [
        ...products.map(
              (e) => (e['category'] == category)
              ? (min <= e['price'] && e['price'] <= max)
              ? Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                log("Button Clicked....");
                log("Name : ${e['title']}");
                Navigator.pushNamed(context, Routes.detail_page,
                    arguments: e);
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: h * 0.2,
                    width: w * 0.45,
                    decoration: BoxDecoration(
                      color: const Color(0xffEADFDB),
                      borderRadius: BorderRadius.circular(10),
                      image:  DecorationImage(
                        image: NetworkImage(
                          e['thumbnail'],
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    padding: const EdgeInsets.all(8),

                  ),
                  SizedBox(
                    height: h * 0.015,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        e['title'].toString().split(" ")[0],
                        style: TextStyle(
                          fontSize: textScale.scale(20),
                        ),
                      ),
                      SizedBox(
                        width: w * 0.05,
                      ),
                      Text(
                        "⭐ ${e['rating']}",
                        style: TextStyle(
                          fontSize: textScale.scale(16),
                          letterSpacing: 1,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: h * 0.001,
                  ),
                  Text(
                    "\$${e['price']}.00",
                    style: TextStyle(
                      fontSize: textScale.scale(22),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          )
              : Container()
              : Container(),
        ),
      ],
    ),
  );
}