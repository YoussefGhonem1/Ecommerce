import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Details extends StatefulWidget {
  final data;
  const Details({super.key, this.data});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: Container(
          padding: const EdgeInsets.all(15),
          child: ListView(children: [
            Row(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(70),
                    child: Image.asset(
                        "images/WhatsApp Image 2023-03-23 at 1.57.48 PM.jpeg",
                        fit: BoxFit.cover),
                  ),
                ),
                const Expanded(
                  child: ListTile(
                    title: Text("Youssef Ghonem"),
                    subtitle: Text("youssefghoneem883@gmail.com"),
                  ),
                ),
              ],
            ),
            ListTile(
              title: const Text("Home Page"),
              leading: const Icon(Icons.home),
              onTap: () {},
            ),
            ListTile(
              title: const Text("Account"),
              leading: const Icon(Icons.account_balance_rounded),
              onTap: () {},
            ),
            ListTile(
              title: const Text("Order"),
              leading: const Icon(Icons.check_box),
              onTap: () {},
            ),
            ListTile(
              title: const Text("About us"),
              leading: const Icon(Icons.help),
              onTap: () {},
            ),
            ListTile(
              title: const Text("Contact us"),
              leading: const Icon(Icons.phone_android_outlined),
              onTap: () {},
            ),
            ListTile(
              title: const Text("Sign out"),
              leading: const  Icon(Icons.exit_to_app),
              onTap: () {},
            ),
          ]),
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.shop_2_outlined,
              color: Colors.black,
            ),
            Text(
              " Ecommerce ",
              style: TextStyle(color: Colors.black),
            ),
            Text(
              "Youssef",
              style: TextStyle(color: Colors.orange),
            ),
          ],
        ),
        iconTheme: const IconThemeData(color: Colors.grey),
        backgroundColor: Colors.grey[200],
        elevation: 0.0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Image.asset(widget.data['image']),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: Text(
              widget.data['title'],
              textAlign: TextAlign.center,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 5),
            child: Text(
              widget.data['subtitle'],
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.black, fontSize: 15),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 3, bottom: 20),
            child: Text(
              widget.data['price'],
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Color :   "),
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.orange)),
              ),
              const Text("  Grey    "),
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.orange)),
              ),
              const Text("  Black"),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: const Text(
              "Size  :   34   35   40   41  ",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            margin: const EdgeInsets.symmetric(horizontal: 40),
            child: MaterialButton(
                color: Colors.black,
                textColor: Colors.white,
                child: const Text("Add To Cart"),
                onPressed: () {}),
          ),
        ],
      ),
    );
  }
}
