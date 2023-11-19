import 'package:e_cmmerce_hey_flutter/HomePageScreen.dart';
import 'package:e_cmmerce_hey_flutter/favourate_screen.dart';
import 'package:e_cmmerce_hey_flutter/profile.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List screens=[
   Home(),
    FavourateScreen(),
    ProfileScreen(),
  ];
  int currenIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shop",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currenIndex,
        onTap: (value){
          setState(() {
            currenIndex=value;
          });

        },
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Favourate"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
        ],
      ),
      body: screens[currenIndex],
    );
  }
}
