import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool faceID = false;
  bool pushNotifications = true;
  bool locationServices = true;
  bool darkMode = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final h = size.height;
    final w = size.width;
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: w * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(

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

                    Padding(
                      padding: EdgeInsets.only(left: w * 0.12),
                      child: Text(
                        "Account & Settings",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: w * 0.05,
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              Text("Account",style: TextStyle(fontWeight: FontWeight.bold,fontSize: w * 0.05),),
              SizedBox(height: h * 0.02,),
              ListTile(
                onTap: (){},
                leading: Icon(Icons.notifications,color: Colors.grey,),
                title: Text("Notification Setting"),
                trailing: Icon(Icons.arrow_forward_ios_outlined,size: w * 0.05,),

              ),
              Divider(color: Colors.grey,),
              ListTile(
                onTap: (){},
                leading: Icon(Icons.delivery_dining,color: Colors.grey,),
                title: Text("Shipping Address"),
                trailing: Icon(Icons.arrow_forward_ios_outlined,size: w * 0.05,),

              ),
              Divider(color: Colors.grey,),
              ListTile(
                onTap: (){},
                leading: Icon(Icons.wallet,color: Colors.grey,),
                title: Text("Payment Info"),
                trailing: Icon(Icons.arrow_forward_ios_outlined,size: w * 0.05,),

              ),
              Divider(color: Colors.grey,),
              ListTile(
                onTap: (){},
                leading: Icon(Icons.delete_forever,color: Colors.grey,),
                title: Text("Delete Account"),
                trailing: Icon(Icons.arrow_forward_ios_outlined,size: w * 0.05,),

              ),
              Divider(color: Colors.grey,),
              SizedBox(height: h * 0.04,),
              Text("App Settings",style: TextStyle(fontWeight: FontWeight.bold,fontSize: w * 0.05),),
             SizedBox(height: h * 0.04,),
              SwitchListTile(
                title: Text("Enable Face ID For Log In"),
                value: faceID,
                onChanged: (value) {
                  setState(() {
                    faceID = value;
                  });
                },
              ),
              Divider(color: Colors.grey,),
              SwitchListTile(
                title: Text("Enable Push Notifications"),
                value: pushNotifications,
                onChanged: (value) {
                  setState(() {
                    pushNotifications = value;
                  });
                },
              ),
              Divider(color: Colors.grey,),
              SwitchListTile(
                title: Text("Enable Location Services"),
                value: locationServices,
                onChanged: (value) {
                  setState(() {
                    locationServices = value;
                  });
                },
              ),
              Divider(color: Colors.grey,),
              SwitchListTile(
                title: Text("Dark Mode"),
                value: darkMode,
                onChanged: (value) {
                  setState(() {
                    darkMode = value;
                  });
                },
              ),
              Divider(color: Colors.grey,),





            ],
          ),
        ),
      ),
    );
  }
}
