import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:memory/Login.dart';

class ButtonNavBar extends StatefulWidget {
  @override
  _ButtonNavBarState createState() => _ButtonNavBarState();
}

class _ButtonNavBarState extends State<ButtonNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 40,
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          colors: [
            Color(0xFFBFFFC7),
            Color(0xFFf9e866),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5),
        child: GNav(
            backgroundColor: Colors.transparent,
            color: Color(0xFF7DBD72),
            activeColor: Color(0xFF7DBD72),
            tabBackgroundColor: Color(0xFFDEDFDA),
            padding: EdgeInsets.all(6.5),
            gap: 8,
            tabs: const [
              GButton(
                icon: Icons.home,
                text: "Home",
              ),
              GButton(
                icon: Icons.person,
                text: "Compte ",
                 
              ),
              GButton(
         //     onPressed: ,
                icon: Icons.more_horiz_outlined,
                text: "More",
              ),
            ]),
      ),
    );
  }
}
