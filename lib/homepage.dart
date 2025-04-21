import 'package:ecommerce/detals.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List categories = [
    {
      "icon": Icons.laptop,
      "title": "Laptop",
    },
    {
      "icon": Icons.phone_android,
      "title": "Mobile",
    },
    {
      "icon": Icons.headphones,
      "title": "Headphones",
    },
    {
      "icon": Icons.card_giftcard_outlined,
      "title": "Gifts",
    },
    {
      "icon": Icons.electric_car_outlined,
      "title": "Car",
    }
  ];
  List items = [
    {
      "image": "images/1.jpg",
      "title": "SweatShirt",
      "subtitle": "Printonline Men's Drawstring Neck",
      "price": "EGP 350.00",
    },
    {
      "image": "images/2.jpg",
      "title": "Casio Watch",
      "subtitle": "stainless steel silver dress watch",
      "price": "EGP 1,780.00",
    },
    {
      "image": "images/3.jpg",
      "title": "Headphone",
      "subtitle": "Soundcore By Anker Life Q30",
      "price": "EGP 4,700.00",
    },
    {
      "image": "images/4.jpg",
      "title": "Headphone",
      "subtitle": "soundcore by Anker P20i",
      "price": "EGP 799.00",
    },
    {
      "image": "images/4.jpg",
      "title": "Headphone",
      "subtitle": "soundcore by Anker P20i",
      "price": "EGP 799.00",
    },
    {
      "image": "images/1.jpg",
      "title": "SweatShirt",
      "subtitle": "Printonline Men's Drawstring Neck",
      "price": "EGP 350.00",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[300],
        iconSize: 40,
        selectedItemColor: Colors.orange,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: " ",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: " ",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: " ",
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      hintText: "Search",
                      border: InputBorder.none,
                      fillColor: Colors.grey[200],
                      filled: true,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Icon(Icons.menu),
                ),
              ],
            ),
            Container(
              height: 30,
            ),
            const Text(
              "Categories",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Container(height: 20),
            Container(
              height: 100,
              margin: const EdgeInsets.only(right: 10),
              child: ListView.builder(
                itemCount: categories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, i) {
                  return Container(
                    margin: const EdgeInsets.only(right: 10),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[350],
                              borderRadius: BorderRadius.circular(100)),
                          padding: const EdgeInsets.all(15),
                          child: Icon(
                            categories[i]['icon'],
                            size: 40,
                          ),
                        ),
                        Text(
                          categories[i]['title'],
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              height: 20,
            ),
            const Text(
              "Best Selling",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Container(
              height: 10,
            ),
            GridView.builder(
              itemCount: items.length,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisExtent: 230),
              itemBuilder: (context, i) {
                return InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => Details(
                                data: items[i],
                              )),
                    );
                  },
                  child: Card(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(20),
                            width: 300,
                            color: Colors.white,
                            child: Image.asset(
                              items[i]['image'],
                              height: 100,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Text(
                            items[i]['title'],
                            style: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            items[i]['subtitle'],
                            style: const TextStyle(
                                fontSize: 14, color: Colors.grey),
                          ),
                          Container(
                            height: 5,
                          ),
                          Text(
                            items[i]['price'],
                            style: const TextStyle(
                                fontSize: 14,
                                color: Colors.orange,
                                fontWeight: FontWeight.bold),
                          ),
                        ]),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
