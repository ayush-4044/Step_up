import 'package:flutter/material.dart';

class BestSellerScreen extends StatefulWidget {
  const BestSellerScreen({super.key});

  @override
  State<BestSellerScreen> createState() => _BestSellerScreenState();
}

class _BestSellerScreenState extends State<BestSellerScreen> {
  final List<Map<String, dynamic>> favItem = [
    {
      'image': "images/shoes_best6.png",
      'name': "Nike Jordan",
      'price': "\$493.00",
      'line': "BEST SELLER",
      'icon1' : Icons.circle,
      'icon1color' : Color(0xFF4EE8CC),
      'icon2' : Icons.circle,
      'icon2color' : Color(0xFF92CAFF),


    },
    {
      'image': "images/shoes_best1.png",
      'name': "Nike Air Max",
      'price': "\$879.99",
      'line': "BEST SELLER",
      'icon1' : Icons.circle,
      'icon1color' : Color(0xFF1E65B9),
      'icon2' :Icons.circle,
      'icon2color' : Color(0xFFD0654E),

    },
    {
      'image': "images/shoes_best2.png",
      'name': "Nike Club Max",
      'price': "\$879.99",
      'line': "BEST SELLER",
      'icon1' : Icons.circle,
      'icon1color' : Color(0xFF3196DC),
      'icon2' : Icons.circle,
      'icon2color' : Color(0xFF2FB73D),
    },
    {
      'image': "images/shoes_best3.png",
      'name': "Nike Jordan",
      'price': "\$493.00",
      'line': "BEST SELLER",
      'icon1' : Icons.circle,
      'icon1color' : Color(0xFFF04E80),
      'icon2' : Icons.circle,
      'icon2color' : Color(0xFF302E80),
    },
    {
      'image': "images/shoes_best4.png",
      'name': "Nike Jordan",
      'price': "\$493.00",
      'line': "BEST SELLER",
      'icon1' : Icons.circle,
      'icon1color' : Color(0xFF3D8D62),
      'icon2' : Icons.circle,
      'icon2color' : Color(0xFF6D81E9),

    },
    {
      'image': "images/Intro_shoes3.png",
      'name': "Nike Air Max",
      'price': "\$879.99",
      'line': "BEST SELLER",
      'icon1' : Icons.circle,
      'icon1color' : Color(0xFF9241E3),
      'icon2' :Icons.circle,
      'icon2color' : Color(0xFF4C8DD9),
    },
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final h = size.height;
    final w = size.width;

    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: w * 0.05,
              vertical: h * 0.02,
            ),
            child: Column(
              children: [
                Row(


                  children: [
                    GestureDetector(
                      onTap: (){
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
                    Padding(
                      padding:  EdgeInsets.only(left: w * 0.2),
                      child: Text(
                        "Best Sellers",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: w * 0.05,
                        ),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: w * 0.1),
                      child: SizedBox(

                          child: Row(
                            children: [
                              Icon(Icons.filter_list),
                              SizedBox(
                                width: w * 0.03,
                              ),
                              Icon(Icons.search)
                            ],
                          )

                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                GridView.builder(

                  shrinkWrap: true,

                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 0.75,
                    crossAxisCount: 2,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15,


                  ),
                  itemCount: favItem.length,
                  itemBuilder: (context, index) =>
                      Container(

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(child: Image.asset(favItem[index]['image'],)),
                              SizedBox(height: 10,),
                              Text(favItem[index]['line'],style: TextStyle(color: Colors.blue),),
                              SizedBox(height: 4,),
                              Text(favItem[index]['name'],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(favItem[index]['price'],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                                  Row(

                                    children: [
                                      Icon(favItem[index]['icon1'],color:favItem[index]['icon1color'],size: 20,),
                                      SizedBox(width: 5,),
                                      Icon(favItem[index]['icon2'],color:favItem[index]['icon2color'],size: 20,),

                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
