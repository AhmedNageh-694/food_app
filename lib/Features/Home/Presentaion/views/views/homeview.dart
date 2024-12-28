import 'package:flutter/material.dart';
import 'package:foodapp/Features/Home/Presentaion/views/views/searchview.dart';
import 'package:foodapp/Features/Home/Presentaion/views/views/settingview.dart';
import 'package:foodapp/Features/Home/Presentaion/views/widgets/breadcard.dart';
import 'package:foodapp/Features/Home/Presentaion/views/widgets/card.dart';
import 'package:foodapp/Features/Home/Presentaion/views/widgets/category.dart';
import 'package:foodapp/Features/auth/Presentaion/views/login_screen.dart';
import 'package:foodapp/Features/auth/Presentaion/views/signup_screen.dart';

class Homeview extends StatefulWidget {
  const Homeview({super.key});

  @override
  State<Homeview> createState() => _HomeviewState();
}

class _HomeviewState extends State<Homeview> {
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Padding(
        padding: const EdgeInsets.only(top: 50, bottom: 5),
        child: Drawer(
            child: Padding(
          padding: const EdgeInsets.only(right: 20, left: 20, top: 40),
          child: Column(children: [
            ListTile(
              title: const Text(
                'Signin',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: const Icon(
                Icons.login,
                color: Colors.redAccent,
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const LoginScreen()));
              },
            ),
            ListTile(
              title: const Text(
                'Signup',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              leading: const Icon(
                Icons.logout,
                color: Colors.amber,
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const SignUpScreen()));
              },
            ),
            ListTile(
              title: const Text(
                "Setting",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              leading: const Icon(Icons.settings, color: Colors.blue),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Settingview()));
              },
            )
          ]),
        )),
      ),
      appBar: AppBar(
        leading: Builder(builder: (context) {
          return GestureDetector(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: const Icon(Icons.menu_rounded));
        }),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Searchview()));
              },
              icon: const Icon(
                Icons.search,
                size: 30,
              )),
        ],
      ),
      body: ListView(
        children: const [
          Padding(
            padding: EdgeInsets.only(
              left: 20,
              top: 10,
            ),
            child: Row(
              children: [
                Text(
                  "Delicious",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Food",
                  style: TextStyle(fontSize: 30),
                )
              ],
            ),
          ),
          Category(),
          SizedBox(
            height: 20,
          ),
          SizedBox(height: 320, child: MyWidget()),
          SizedBox(height: 320, child: MyWidget()),
          Breadcard(),
          Breadcard(),
          Breadcard(),
          Breadcard(),
          Breadcard(),

        ],
        
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
        child: Container(
          padding: const EdgeInsets.only(top: 10),
          height: 65,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(40)),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 10,
                spreadRadius: 5,
              ),
            ],
          ),
          child: BottomNavigationBar(
              onTap: (val) {
                setState(() {
                  currentindex = val;
                });
              },
              backgroundColor: Colors.transparent,
              elevation: 0,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Colors.amber,
              unselectedItemColor: Colors.grey,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              currentIndex: currentindex,
              selectedLabelStyle: const TextStyle(fontSize: 0),
              unselectedLabelStyle: const TextStyle(fontSize: 0),
              iconSize: 20,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.queue_rounded), label: 'order'),
                BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_rounded), label: 'cart')
              ]),
        ),
      ),
    );
  }
}
