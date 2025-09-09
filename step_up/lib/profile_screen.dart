import 'package:flutter/material.dart';
import 'package:step_up/setting_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final h = size.height;
    final w = size.width;

    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: w * 0.05,
                vertical: h * 0.02,
              ),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: w * 0.13,
                      width: w * 0.13,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 6,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                          size: w * 0.06,
                        ),
                      ),
                    ),
                  ),
                  Spacer(),

                  Padding(
                    padding: EdgeInsets.only(right: w * 0.09),
                    child: Text(

                      "Profile",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: w * 0.05,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: w * 0.15),
                    child: IconButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>SettingScreen()));
                      },
                      icon: Icon(
                        Icons.settings,

                        size: w * 0.065,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: h * 0.15,
              child: Stack(
                children: [
                  Center(
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('images/user.jpg'),
                    ),
                  ),
                  Positioned(
                        left: 183,
                    top: 100,
                    child: CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.blue,
                      child: Center(
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.camera_alt_rounded,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: h * 0.05,),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal:  w * 0.05),
              child: Text("Full Name",style: TextStyle(fontWeight: FontWeight.bold,fontSize: w * 0.04),),
            ),
            SizedBox(height:  h * 0.01,),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal:  w * 0.05),
              child: Container(
                width: double.infinity,
                height: h * 0.055,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Ayush Patel",
                    contentPadding: EdgeInsets.only(left: w * 0.05),
                    hintStyle: TextStyle(color: Colors.grey)
                  ),
                ),
              ),
            ),
            SizedBox(height:  h * 0.01,),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal:  w * 0.05),
              child: Text("Email Address",style: TextStyle(fontWeight: FontWeight.bold,fontSize: w * 0.04),),
            ),
            SizedBox(height:  h * 0.01,),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal:  w * 0.05),
              child: Container(
                width: double.infinity,
                height: h * 0.055,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "ayushpatel@gmail.com",
                      contentPadding: EdgeInsets.only(left: w * 0.05),
                      hintStyle: TextStyle(color: Colors.grey)
                  ),
                ),
              ),
            ),
            SizedBox(height:  h * 0.01,),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal:  w * 0.05),
              child: Text("Password",style: TextStyle(fontWeight: FontWeight.bold,fontSize: w * 0.04),),
            ),
            SizedBox(height:  h * 0.01,),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal:  w * 0.05),
              child: Container(
                width: double.infinity,
                height: h * 0.055,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "123456",
                      contentPadding: EdgeInsets.only(left: w * 0.05),
                      hintStyle: TextStyle(color: Colors.grey)
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
