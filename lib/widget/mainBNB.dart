import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:turfind/controller/individualStateController.dart';
import 'package:turfind/screens/individual/home.dart';
import 'package:turfind/screens/individual/savedhomes.dart';


class MainBNB extends StatelessWidget {
  MainBNB({Key? key}) : super(key: key);

  final IndividualStateController _individualStateController = Get.put(IndividualStateController());

  final List<Widget> _screens = [
    Home(),
    SavedHomesScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<IndividualStateController>(
      builder: (controller) {
        return Scaffold(
          body: _screens[controller.selectedIndex],
          bottomNavigationBar: BottomAppBar(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: (){
                    controller.selectedIndexItem(0);
                  }, 
                  icon: Icon(
                    Iconsax.home,
                    color: (controller.selectedIndex == 0) ? 
                    (Colors.green): 
                    (Colors.black),
                  ),
                ),
                IconButton(
                  onPressed: (){
                    controller.selectedIndexItem(1);
                  }, 
                  icon: Icon(
                    Iconsax.save_2,
                    color: (controller.selectedIndex == 1) ? 
                    (Colors.green): 
                    (Colors.black),
                  ),
                ),
                const CircleAvatar(
                  radius: 13,
                )
              ],
            ),
          ),
        );
      }
    );
  }
}