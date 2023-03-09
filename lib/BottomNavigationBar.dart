import 'package:dgs_rehber/DenemeListesiEkrani.dart';
import 'package:dgs_rehber/kronometre.dart';
import 'package:dgs_rehber/puanHesapEkrani.dart';
import 'package:flutter/material.dart';

class bottomNavigationBar extends StatefulWidget {

  @override
  State<bottomNavigationBar> createState() => _bottomNavigationBarState();
}

class _bottomNavigationBarState extends State<bottomNavigationBar> {

  var sayfaListesi = [puanHesapEkrani(),FlutterStopWatch(),denemeListesi()];
  int secilenIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12,
      body: sayfaListesi[secilenIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white12,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.calculate,),
            label:"Hesap",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.watch_later),
              label:"Kronometre",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label:"Denemeler",
          ),
        ],
        unselectedItemColor: Colors.white70,
        currentIndex: secilenIndex,
        onTap: (index){
          setState(() {
            secilenIndex = index;
          });
        },
      ),
    );
  }
}
