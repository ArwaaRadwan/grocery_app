import 'package:flutter/material.dart';
import 'package:grocery_app/widgets/drawer.dart';
import 'package:grocery_app/widgets/home_category1.dart';
import 'package:grocery_app/widgets/home_category2.dart';
import 'package:grocery_app/widgets/name_style.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            NameStyle(fontSize: 22),
            Text(
              "Your Daily Needs",
              style: TextStyle(fontSize: 10, color: Colors.grey),
            ),
          ],
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            AppBar(title: Text("Menu", style: TextStyle(fontSize: 15))),
            DrawerList(label: "Invited Friend", onPressed: () {}),
            DrawerList(label: "About Us", onPressed: () {}),
            DrawerList(label: "FAQs", onPressed: () {}),
            DrawerList(label: "Terms & Conditions", onPressed: () {}),
            DrawerList(label: "Help Center", onPressed: () {}),
            DrawerList(label: "Rate this App", onPressed: () {}),
            DrawerList(label: "Privacy Policy", onPressed: () {}),
            DrawerList(label: "Contact Us", onPressed: () {}),
            SizedBox(height: 30),
            DrawerList(label: "Logout", onPressed: () {}),
          ],
        ),
      ),
    

          body: ListView(
            children: [
              Stack(
                children: [
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.green, width: 0.1),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'assets/images/home.jpg',
                          width: 500,
                          height: 240,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Column(
                        children: [
                          Text(
                            "Order Your Daily Groceries",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Lilita One",
                              letterSpacing: 1,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "#Free Delivery",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffAB2C2B),
                              fontFamily: "Lilita One",
                              letterSpacing: 1, ), ), ],),),), ],),
                SizedBox(height: 20,),
                HomeCategory1(categoryLabel: 'Popular Packs'),
                SizedBox(height: 20,),
                HomeCategory2(categoryLabel: 'Our New Item'),
              
           


            ],

          ),
        );
      }
    }
 