import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:turfind/auth/loginauth.dart';
import 'package:turfind/routes/app_routes_name.dart';
import 'package:turfind/widget/bottomsheet1.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.green,
        child: Column(
          children: [
            Container(
              height: 500,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(300.0)),
                image: DecorationImage(
                    image: AssetImage("images/house1.png"), fit: BoxFit.cover
                )
              ),
            ),
            const SizedBox(height: 50,),
            const SizedBox(
              width: 350,
              child: Text(
                "Find the house of your dreams with just one application",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                  color: Colors.white
                ),
              ),
            ),
            const SizedBox(height: 180,),
            SizedBox(
              width: 350,
              height: 55,
              child: ElevatedButton(
                  onPressed: () {
                    Get.toNamed(loginScreen);
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    ),
                    primary: Colors.white
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Proceed",
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(width: 10,),
                      Icon(Iconsax.arrow_right, color: Colors.green,)
                    ],
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}

