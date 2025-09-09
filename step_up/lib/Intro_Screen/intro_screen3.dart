import 'package:flutter/material.dart';
import 'package:step_up/Login%20&%20Sign%20up/login_screen.dart';

class IntroScreen3 extends StatefulWidget {
  const IntroScreen3({super.key});

  @override
  State<IntroScreen3> createState() => _IntroScreen3State();
}

class _IntroScreen3State extends State<IntroScreen3> {
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
                    Image.asset("images/Intro_shoes3.png"),
                  ],
                ),
                SizedBox(height: 70),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    "Summer Shoes Nike 2022",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    "Amet Minim Lit Nodeseru Saku Nandu sit Alique Dolor",
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
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>LoginScreen()));

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
