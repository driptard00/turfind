import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:turfind/auth/loginauth.dart';
import 'package:turfind/routes/app_routes_name.dart';
import 'package:turfind/screens/individual/profilescreen.dart';
class AppBottomSheet extends StatelessWidget {
  const AppBottomSheet ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: double.infinity,
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
      child: Column(
        children: [
          Container(
            height: 8,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(20)
            ),
          ),
          Image.asset("images/turfindlogo.png", height: 80, width: 150,),
          ListTile(
            onTap: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context)=>  ProfileScreeen()
                )
              );
            },
            title: const Text("Profile", style: TextStyle(fontSize: 18),),
          ),
          const Divider(
            color: Colors.black,
          ),
          ListTile(
            onTap: (){
              Get.toNamed(settingScreen);
            },
            title: const Text("Settings", style: TextStyle(fontSize: 18),),
          ),
          const Divider(
            color: Colors.black,
          ),
          ListTile(
            onTap: (){},
            title: const Text("About", style: TextStyle(fontSize: 18),),
          ),
          const Divider(
            color: Colors.black,
          ),
          ListTile(
            onTap: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) =>  LoginAuth()
                )
              );
            },
            title: const Text("Logout", style: TextStyle(fontSize: 18),),
          ),
          const Divider(
            color: Colors.black,
          ),
          const SizedBox(height: 30,),
          const Text("v1.0.1", style: TextStyle(fontSize: 20, color: Colors.grey),),
        ],
      ),
    );
  }
}
