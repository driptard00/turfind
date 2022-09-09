import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:turfind/controller/individualStateController.dart';
import 'package:get/get.dart';

class ProfileScreeen extends StatelessWidget {
  ProfileScreeen({Key? key}) : super(key: key);

  final IndividualStateController _individualStateController = Get.find<IndividualStateController>();


  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text("Profile", style: TextStyle(color: Colors.black,),),
          centerTitle: true,
          leading: IconButton(
              onPressed: (){
                Navigator.pop(context);
              },
              icon: const Icon(Iconsax.arrow_left, color: Colors.black, size: 20,)
          ),
        ),
        body: GetBuilder<IndividualStateController>(
          builder: (controller) {
            return (!controller.isLoading) ?
            (
                Container(
                  color: Colors.white,
                  height: double.infinity,
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(height: 20,),
                        Container(
                          height: 150,
                          child: Stack(
                            children: [
                              Positioned(
                                  child: Container(
                                    height: 120,
                                    width: 120,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(60)
                                    ),
                                  )
                              ),
                              Positioned(
                                  top: 90,
                                  right: 10,
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(20)
                                    ),
                                    child: IconButton(
                                        onPressed: (){},
                                        icon: const Icon(Iconsax.camera, color: Colors.white, size: 20,)
                                    ),
                                  )
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20,),
                        Container(
                          width: 350,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: TabBar(
                              unselectedLabelColor: Colors.black,
                              indicator: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              tabs: const [
                                Tab(
                                  text: "Profile",
                                ),
                                Tab(
                                  text: "Favorites",
                                )
                              ]
                          ),
                        ),
                        const SizedBox(height: 10,),
                        SizedBox(
                          height: 500,
                          child: TabBarView(
                            children: [
                              Container(
                                child: ListView(
                                  primary: false,
                                  children: [
                                    const SizedBox(height: 30,),
                                    Form(
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 70,
                                            width: 350,
                                            decoration: BoxDecoration(
                                                color: Colors.grey.shade100,
                                                borderRadius: BorderRadius.circular(10)
                                            ),
                                            child: TextFormField(
                                              controller: controller.firstnameController,
                                              decoration: const InputDecoration(
                                                  prefixIcon: Icon(Iconsax.user, size: 20,color: Colors.black,),
                                                  labelText: "Firstname",
                                                  border: InputBorder.none,
                                                  labelStyle: TextStyle(
                                                      color: Colors.black
                                                  ),
                                                  floatingLabelBehavior: FloatingLabelBehavior.always
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 20,),
                                          Container(
                                            height: 70,
                                            width: 350,
                                            decoration: BoxDecoration(
                                                color: Colors.grey.shade100,
                                                borderRadius: BorderRadius.circular(10)
                                            ),
                                            child: TextFormField(
                                              controller: controller.lastnameController,
                                              decoration: const InputDecoration(
                                                  prefixIcon: Icon(Iconsax.user, size: 20,color: Colors.black,),
                                                  labelText: "Lastname",
                                                  border: InputBorder.none,
                                                  labelStyle: TextStyle(
                                                      color: Colors.black
                                                  ),
                                                  floatingLabelBehavior: FloatingLabelBehavior.always
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 20,),
                                          Container(
                                            height: 70,
                                            width: 350,
                                            decoration: BoxDecoration(
                                                color: Colors.grey.shade100,
                                                borderRadius: BorderRadius.circular(10)
                                            ),
                                            child: TextFormField(
                                              controller: controller.emailController,
                                              enabled: false,
                                              keyboardType: TextInputType.emailAddress,
                                              decoration: const InputDecoration(
                                                  prefixIcon: Icon(Icons.mail, size: 20,color: Colors.black,),
                                                  labelText: "Email",
                                                  border: InputBorder.none,
                                                  labelStyle: TextStyle(
                                                      color: Colors.black
                                                  ),
                                                  floatingLabelBehavior: FloatingLabelBehavior.always
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 20,),
                                          Container(
                                            height: 70,
                                            width: 350,
                                            decoration: BoxDecoration(
                                                color: Colors.grey.shade100,
                                                borderRadius: BorderRadius.circular(10)
                                            ),
                                            child: TextFormField(
                                              keyboardType: TextInputType.phone,
                                              decoration: const InputDecoration(
                                                  prefixIcon: Icon(Icons.phone, size: 20,color: Colors.black,),
                                                  labelText: "Phone number",
                                                  border: InputBorder.none,
                                                  labelStyle: TextStyle(
                                                      color: Colors.black
                                                  ),
                                                  floatingLabelBehavior: FloatingLabelBehavior.always
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 30,),
                                          SizedBox(
                                            height: 60,
                                            width: 350,
                                            child: ElevatedButton(
                                              onPressed: (){},
                                              style: ElevatedButton.styleFrom(
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(10)
                                                  ),
                                                  primary: Colors.green
                                              ),
                                              child: const Text(
                                                "Save",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: ListView(
                                  primary: false,
                                  children: const [

                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
            ) :
            const Center(
              child: (
              CircularProgressIndicator(
                color: Colors.green,
              )
              ),
            );
          }
        )
      ),
    );
  }
}
