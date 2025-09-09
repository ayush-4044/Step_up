import 'package:flutter/material.dart';
import 'package:step_up/home_screen.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final w = size.width;
    final h = size.height;
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: h * 0.02, left: w * 0.05),
                child: Row(
                  spacing: 90,
          
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
                              color: Colors.black26,
                              blurRadius: 5,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child:Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.black,
                            size: w * 0.06,
                          ),
                        ),
                      ),
                    ),
          
                    Text(
                      "Checkout",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: w * 0.05,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: h * 0.019),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: w * 0.05),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: w * 0.01),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: w * 0.048,
                            vertical: h * 0.012,
                          ),
                          child: Text(
                            'Contact Information',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        ListTile(
                          title: Text(
                            "ayushpatel@gmail.com",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            "Email",
                            style: TextStyle(color: Colors.grey),
                          ),
                          leading: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.grey.shade300,
                            ),
                            child: Center(child: Icon(Icons.email)),
                          ),
                          trailing: Icon(Icons.edit_outlined),
                        ),
                        ListTile(
                          title: Text(
                            "+88-692-764-269",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            "Phone",
                            style: TextStyle(color: Colors.grey),
                          ),
                          leading: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.grey.shade300,
                            ),
                            child: Center(child: Icon(Icons.phone)),
                          ),
                          trailing: Icon(Icons.edit_outlined),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: w * 0.048,
                            vertical: h * 0.012,
                          ),
                          child: Text(
                            'Address',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: w * 0.05),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Newahall St 36, London, 12908 - UK',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                              Icon(Icons.keyboard_arrow_down, color: Colors.grey),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: h * 0.015),
                          child: Center(child: Image.asset("images/Map.png")),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: w * 0.048,
                            vertical: h * 0.012,
                          ),
                          child: Text(
                            'Payment Method',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        ListTile(
                          title: Text(
                            "Paypal Card",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            "**** **** 0696 4629",
                            style: TextStyle(color: Colors.grey),
                          ),
                          leading: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.grey.shade300,
                            ),
                            child: Center(
                              child: Image.asset(
                                "images/Vector.png",
                                height: h * 0.028,
                              ),
                            ),
                          ),
                          trailing: Icon(Icons.keyboard_arrow_down),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),

          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0, -3),
              blurRadius: 10
            )
          ]
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Subtotal",
                  style: TextStyle(color: Colors.grey, fontSize: 17),
                ),
                Text(
                  "\$1250.00",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: h * 0.010),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Shopping",
                  style: TextStyle(color: Colors.grey, fontSize: 17),
                ),
                Text(
                  "\$40.90",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Divider(color: Colors.grey, thickness: 1, height: h * 0.055),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total Cost",
                  style: TextStyle( fontWeight: FontWeight.bold,fontSize: 17),
                ),
                Text(
                  "\$1690.99",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: h * 0.020),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(vertical: h * 0.017),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {
                  showPaymentSuccessDialog(context);
                },
                child: Text(
                  "Payment",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,

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
void showPaymentSuccessDialog (BuildContext context){
  final size = MediaQuery.of(context).size;
  final w = size.width;
  final h = size.height;
  showDialog(context: context,
      builder: (BuildContext context)
      {
        return Dialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),

          ),
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: w * 0.06,vertical: h * 0.030),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: h * 0.15,
                  child: Image.asset("images/success.png")
                ),
                 SizedBox(height: h * 0.02),

                 Text(
                  "Your Payment Is\nSuccessful",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: h * 0.03),

                // Back to Shopping Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding:  EdgeInsets.symmetric(vertical: h * 0.018),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                     Navigator.push(context, MaterialPageRoute(builder: (_)=> HomeScreen()));
                    },
                    child:  Text(
                      "Back To Shopping",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      });
}

