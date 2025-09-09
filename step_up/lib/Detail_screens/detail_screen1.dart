import 'package:flutter/material.dart';
import 'package:step_up/my_cart_screen.dart';

class DetailsScreen1 extends StatefulWidget {
  const DetailsScreen1({super.key});

  @override
  State<DetailsScreen1> createState() => _DetailsScreen1State();
}

class _DetailsScreen1State extends State<DetailsScreen1> {
  final List<Map<String, dynamic>> shoesImage = [
    {"image": 'images/popular_shoes1.png'},
    {"image": 'images/popular_shoes2.png'},
    {"image": 'images/new_arrival_shoes.png'},
  ];

  final List<Map<String, dynamic>> shoesNum = [
    {"number": '38'},
    {"number": '39'},
    {"number": '40'},
    {"number": '41'},
    {"number": '42'},
    {"number": '43'},
  ];


  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: height * 0.06), // top space
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.06),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap : (){
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.white, // circle background
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 5,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Icon(Icons.arrow_back_ios, color: Colors.black),
                      ),
                    ),
                  ),
                  Text(
                    "Men’s Shoes",
                    style: TextStyle(fontSize: width * 0.06),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.white, // circle background
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 5,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Icon(Icons.shopping_bag, color: Colors.black),
                  ),
                ],
              ),
            ),
            SizedBox(height: height * 0.02),

            SizedBox(
              height: height * 0.3,
              child: Image.asset("images/popular_shoes1.png", fit: BoxFit.contain),
            ),
            SizedBox(height: height * 0.02),


            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(width * 0.05),
                  topLeft: Radius.circular(width * 0.05),
                ),
                color: Colors.white,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.06),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: height * 0.02),
                    Text(
                      "Best Seller",
                      style: TextStyle(
                        color: Colors.lightBlueAccent,
                        fontSize: width * 0.045,
                      ),
                    ),
                    SizedBox(height: height * 0.015),
                    Text(
                      "Nike Air Jordan",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: width * 0.08,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: height * 0.015),
                    Text(
                      "\$493.00",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: width * 0.06,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: height * 0.02),
                    Text(
                      "Air Jordan is an American brand of basketball\nshoes athletic, casual, and style clothing\nproduced by Nike....",
                      style:
                      TextStyle(fontSize: width * 0.04, color: Colors.grey[700]),
                    ),
                    SizedBox(height: height * 0.025),

                    Text(
                      "Gallery",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: width * 0.06,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: height * 0.02),
                    Row(
                      children: List.generate(
                        shoesImage.length,
                            (index) => Padding(
                          padding: EdgeInsets.only(right: width * 0.04),
                          child: Container(
                            height: width * 0.15,
                            width: width * 0.15,
                            decoration: BoxDecoration(
                              color: const Color(0xFFF8F9FA),
                              borderRadius: BorderRadius.circular(width * 0.05),
                            ),
                            child: Image.asset(shoesImage[index]['image']),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.025),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Size",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: width * 0.06,
                            color: Colors.black,
                          ),
                        ),
                        Row(
                          children: [
                            Text("EU",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: width * 0.045)),
                            SizedBox(width: width * 0.04),
                            Text("US",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: width * 0.045,
                                    color: Colors.grey[700])),
                            SizedBox(width: width * 0.04),
                            Text("UK",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: width * 0.045,
                                    color: Colors.grey[700])),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: height * 0.02),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                        shoesNum.length,
                            (index) => GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          child: Container(
                            height: width * 0.12,
                            width: width * 0.12,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(width * 0.06),
                              color: selectedIndex == index
                                  ? Colors.lightBlueAccent
                                  : const Color(0xFFF8F9FA),
                              boxShadow: selectedIndex == index
                                  ? [
                                BoxShadow(
                                  color: Colors.lightBlueAccent
                                      .withOpacity(0.5),
                                  blurRadius: 12,
                                  offset: const Offset(0, 4),
                                ),
                              ]
                                  : [],
                            ),
                            child: Center(
                              child: Text(
                                shoesNum[index]['number'],
                                style: TextStyle(
                                  color: selectedIndex == index
                                      ? Colors.white
                                      : Colors.grey[700],
                                  fontWeight: FontWeight.bold,
                                  fontSize: width * 0.045,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.025),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(
          horizontal: width * 0.06,
          vertical: height * 0.02,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(width * 0.05),
            topRight: Radius.circular(width * 0.05),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              offset: Offset(0, -1),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Price",
                  style: TextStyle(
                    fontSize: width * 0.05,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: height * 0.005),
                Text(
                  "\$849.69",
                  style: TextStyle(
                    fontSize: width * 0.06,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=> MyCartScreen()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: Size(width * 0.45, height * 0.07),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(width * 0.08),
                ),
                elevation: 0,
              ),
              child: Text(
                "Add To Cart",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: width * 0.05,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
