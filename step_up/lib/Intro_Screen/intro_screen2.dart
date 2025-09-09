import 'package:flutter/material.dart';

import 'intro_screen3.dart';

class IntroScreen2 extends StatefulWidget {
  const IntroScreen2({super.key});

  @override
  State<IntroScreen2> createState() => _IntroScreen2State();
}

class _IntroScreen2State extends State<IntroScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 170),
          Container(
            width: double.infinity,
            height: 639,
            child: Column(
              children: [
                Stack(
                  children: [
                    Center(
                      child: Text(
                        "NIKE",
                        style: TextStyle(color: Colors.black12, fontSize: 150),
                      ),
                    ),
                    Image.asset("images/Intro_shoes2.png"),
                  ],
                ),
                SizedBox(height: 70),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    "Follow Latest Style Shoes",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    "There Are Many Beautiful And Attractive Plants To Your Room",
                    style: TextStyle(fontSize: 20, color: Color(0xFF707B81)),
                  ),
                ),
                Spacer(),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF5B9EE1),
                    minimumSize: Size(100, 50),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>IntroScreen3()));
                  },
                  child: Text(
                    "Next",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
