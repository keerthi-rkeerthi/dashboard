import 'package:advdashboard/transfer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedItemIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        children: [
          buildNavBarItem(Icons.home, 0),
          buildNavBarItem(Icons.card_giftcard, 1),
          buildNavBarItem(Icons.camera, 2),
          buildNavBarItem(Icons.pie_chart, 3),
          buildNavBarItem(Icons.person, 4),
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 300,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0XFF00B686), Color(0XFF00838F)]),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 20, right: 20.0, top: 30),
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.menu,
                            color: Colors.white,
                          ),
                          Text(
                            "Available balance",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          Icon(
                            Icons.notifications,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 80.0,
                            height: 80.0,
                            decoration: BoxDecoration(
                              color: const Color(0XFF00B686),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(.1),
                                    blurRadius: 8,
                                    spreadRadius: 3)
                              ],
                              border: Border.all(
                                width: 1.5,
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                            padding: const EdgeInsets.all(5),
                            child: const CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "data:image/png;base64,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"),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "User Summers",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.camera_front,
                                    color: Colors.white,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  RichText(
                                    text: const TextSpan(
                                        text: "\₹5320",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                        ),
                                        children: [
                                          TextSpan(
                                              text: ".50",
                                              style: TextStyle(
                                                  color: Colors.white38))
                                        ]),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  color: Colors.grey.shade100,
                  child: ListView(
                    padding: const EdgeInsets.only(top: 75),
                    children: [
                      const Text(
                        "Activity",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          buildActivityButton(
                              Icons.collections_outlined,
                              "Collections",
                              Colors.blue.withOpacity(0.2),
                              const Color(0XFF01579B)),
                          buildActivityButton(
                              Icons.money_rounded,
                              "Upcoming",
                              Colors.cyanAccent.withOpacity(0.2),
                              const Color(0XFF0097A7)),
                          buildActivityButton(
                              Icons.receipt,
                              "Receipts",
                              const Color(0XFFD7CCC8).withOpacity(0.4),
                              const Color(0XFF9499B7)),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        "Categories",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      buildCategoryCard(Icons.fastfood, "Food", 120, 20),
                      buildCategoryCard(Icons.flash_on, "Utilities", 430, 17),
                      buildCategoryCard(Icons.fastfood, "Food", 120, 20),
                    ],
                  ),
                ),
              )
            ],
          ),
          Positioned(
            top: 185,
            right: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              width: MediaQuery.of(context).size.width * 0.85,
              height: 160,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.05),
                      blurRadius: 8,
                      spreadRadius: 3,
                      offset: const Offset(0, 10),
                    ),
                  ],
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(50),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Income",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.arrow_upward,
                                color: Color(0XFF00838F),
                              )
                            ],
                          ),
                          Text(
                            "\₹2 170.90",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                                color: Colors.black87),
                          )
                        ],
                      ),
                      Container(width: 1, height: 50, color: Colors.grey),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Expenses",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.arrow_downward,
                                color: Color(0XFF00838F),
                              )
                            ],
                          ),
                          Text(
                            "\₹1 450.10",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                                color: Colors.black87),
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "You spent \₹ 1,494 this month",
                    style: TextStyle(
                      fontSize: 13,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  const Text(
                    "Let's see the cost statistics for this period",
                    style: TextStyle(
                      fontSize: 13,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 1,
                    width: double.maxFinite,
                    color: Colors.grey.withOpacity(0.5),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: const Text(
                      "Tell me more",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0XFF00B686)),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  GestureDetector buildNavBarItem(IconData icon, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedItemIndex = index;
        });
      },
      child: Container(
        width: MediaQuery.of(context).size.width / 5,
        height: 60,
        decoration: index == _selectedItemIndex
            ? BoxDecoration(
                border: const Border(
                    bottom: BorderSide(width: 4, color: Colors.green)),
                gradient: LinearGradient(colors: [
                  Colors.green.withOpacity(0.3),
                  Colors.green.withOpacity(0.016),
                ], begin: Alignment.bottomCenter, end: Alignment.topCenter))
            : const BoxDecoration(),
        child: Icon(
          icon,
          color: index == _selectedItemIndex
              ? const Color(0XFF00B868)
              : Colors.grey,
        ),
      ),
    );
  }

  Container buildCategoryCard(
      IconData icon, String title, int amount, int percentage) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      height: 85,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    icon,
                    color: const Color(0xFF00B686),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "₹$amount",
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "($percentage%)",
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Stack(
            children: [
              Container(
                height: 5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: Colors.grey.shade300),
              ),
              Container(
                height: 5,
                width: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: Color(0XFF00B686)),
              ),
            ],
          )
        ],
      ),
    );
  }

  GestureDetector buildActivityButton(
      IconData icon, String title, Color backgroundColor, Color iconColor) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
          MaterialPageRoute(builder: (BuildContext context) => TransferPage())),
      child: Container(
        margin: EdgeInsets.all(10),
        height: 90,
        width: 90,
        decoration: BoxDecoration(
            color: backgroundColor, borderRadius: BorderRadius.circular(10.0)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: iconColor,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              title,
              style: const TextStyle(
                  color: Colors.black54, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
