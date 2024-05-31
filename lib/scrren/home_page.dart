import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utils/globls/gloabls.dart';
import '../utils/product/products.dart';
import 'componets/category.dart';
import 'componets/products.dart';
import 'componets/sub_category.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override 
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? dropDownVal;
  double sliderValue = 0;
  RangeValues rangeValue = const RangeValues(0, 2000);

  @override
  void initState() {
    super.initState();
    category.insert(0, "All");
    log("Init State in running......");
  }

  @override
  Widget build(BuildContext context) {
    TextScaler textScale = MediaQuery.textScalerOf(context);
    Size size = MediaQuery.sizeOf(context);
    double h = size.height;
    double w = size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: h * 0.045,
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: w * 0.065,
                    backgroundImage: NetworkImage(
                        "https://as1.ftcdn.net/v2/jpg/02/43/12/34/1000_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg"),
                  ),
                  Column(
                    children: [
                      Text(
                        " Hi Adnan",
                        style: TextStyle(
                          fontSize: textScale.scale(25),
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                          letterSpacing: 1,
                        ),
                      ),
                      Text(
                        "Welcome 👋🏻   ",
                        style: TextStyle(
                          fontSize: textScale.scale(15),
                          fontWeight: FontWeight.w600,
                          color: const Color(0xff1D55F1),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  CircleAvatar(
                    radius: w * 0.055,
                    backgroundColor: Colors.grey.shade200,
                    child: const Icon(Icons.notification_add_outlined),
                  ),
                ],
              ),
              SizedBox(
                height: h * 0.03,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                      height: h * 0.06,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffEFF1F5),
                      ),
                      padding: const EdgeInsets.only(left: 8),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            CupertinoIcons.search,
                            color: Colors.grey,
                            size: h * 0.036,
                          ),
                          SizedBox(
                            width: w * 0.02,
                          ),
                          Text(
                            "Search...",
                            style: TextStyle(
                              fontSize: textScale.scale(18),
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            width: w * 0.53,
                          ),
                          Icon(
                            Icons.tune,
                            size: h * 0.033,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: h * 0.02,
              ),
              Row(
                children: [
                  Text(
                    "New Offers",
                    style: TextStyle(
                      fontSize: textScale.scale(20),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "See All",
                    style: TextStyle(
                      fontSize: textScale.scale(15),
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff1D55F1),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: h * 0.02,
              ),
              Container(
                height: h * 0.21,
                width: w,
                decoration: BoxDecoration(
                  color: const Color(0xff1C52E9),
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Friday Sale",
                          style: TextStyle(
                              fontSize: textScale.scale(26),
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                        Text(
                          "UP TO 30% OFF",
                          style: TextStyle(
                            fontSize: textScale.scale(28),
                            fontWeight: FontWeight.w800,
                            color: Color(0xffF3F832),
                          ),
                        ),
                        SizedBox(
                          height: h * 0.02,
                        ),
                        Container(
                          height: h * 0.03,
                          width: w * 0.28,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            "END OF SEASON",
                            style: TextStyle(
                              color: Colors.blueAccent,
                              fontSize: textScale.scale(12),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        )
                      ],
                    ),
                    Expanded(
                      child: Transform.scale(
                        scale: 1.6,
                        child: Image.asset(
                          "assets/images/discount.png",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: h * 0.015,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(
                    flex: 15,
                  ),
                  CircleAvatar(
                    radius: w * 0.015,
                    backgroundColor: const Color(0xffEEEEED),
                  ),
                  const Spacer(),
                  CircleAvatar(
                    radius: w * 0.018,
                    backgroundColor: Color(0xff1D55F2),
                  ),
                  const Spacer(),
                  CircleAvatar(
                    radius: w * 0.015,
                    backgroundColor: const Color(0xffEEEEED),
                  ),
                  const Spacer(),
                  CircleAvatar(
                    radius: w * 0.015,
                    backgroundColor: const Color(0xffEEEEED),
                  ),
                  const Spacer(
                    flex: 15,
                  ),
                ],
              ),
              SizedBox(
                height: h * 0.015,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "New Fashion",
                    style: TextStyle(
                      fontSize: textScale.scale(22),
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                      fontSize: textScale.scale(16),
                      fontWeight: FontWeight.w500,
                      color: Color(0xff1D55F1),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: h * 0.015,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Row(
                  children: [
                    ...category.map(
                      (e) => myCategory(
                          category: e,
                          textScale: textScale,
                          setState: () {
                            setState(() {});
                          }
                          // setState: mySetState,
                          ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: h * 0.03,
              ),
              if (cat == "All") ...[
                ...category.map(
                  (e) => Column(
                    children: [myProduct(context: context, category: e)],
                  ),
                )
              ] else ...[
                myProduct(
                  context: context,
                  category: cat,
                  min: rangeValue.start,
                  max: rangeValue.end,
                ),
              ],
              SizedBox(
                height: h * 0.02,
              ),
              Row(
                children: [
                  Text(
                    "New Sale",
                    style: TextStyle(
                      fontSize: textScale.scale(20),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "See All",
                    style: TextStyle(
                      fontSize: textScale.scale(15),
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff1D55F1),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: h * 0.02,
              ),
              Container(
                height: h * 0.21,
                width: w,
                decoration: BoxDecoration(
                  color: const Color(0xff1C52E9),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.all(25),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Friday Sale",
                                style: TextStyle(
                                    fontSize: textScale.scale(26),
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              ),
                              Text(
                                "UP TO 30% OFF",
                                style: TextStyle(
                                  fontSize: textScale.scale(28),
                                  fontWeight: FontWeight.w800,
                                  color: Color(0xffF3F832),
                                ),
                              ),
                              SizedBox(
                                height: h * 0.02,
                              ),
                              Container(
                                height: h * 0.03,
                                width: w * 0.28,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  "END OF SEASON",
                                  style: TextStyle(
                                    color: Colors.blueAccent,
                                    fontSize: textScale.scale(12),
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        width: w,
        height: h * 0.08,
        margin: const EdgeInsets.all(15),
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: w * 0.08,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.home_filled,
                size: h * 0.04,
                color: Color(0xff1D55F4),
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, Routes.cart_page);
              },
              child: Icon(
                Icons.shopping_bag_outlined,
                color: Colors.grey,
                size: h * 0.04,
              ),
            ),
            const Spacer(),
            Icon(
              Icons.favorite_outline_rounded,
              color: Colors.grey,
              size: h * 0.04,
            ),
            const Spacer(),
            Icon(
              Icons.chat_bubble_outline,
              color: Colors.grey,
              size: h * 0.04,
            ),
            const Spacer(),
            Icon(
              Icons.person_2_outlined,
              color: Colors.grey,
              size: h * 0.04,
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
