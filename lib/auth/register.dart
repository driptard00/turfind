import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:turfind/controller/authStateController.dart';



class Register extends StatelessWidget {
  Register({Key? key}) : super(key: key);

  final AuthStateController _authStateController = Get.find<AuthStateController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: GetBuilder<AuthStateController>(
        builder: (controller) {
          return SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 30,),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: const Icon(Iconsax.arrow_left, size: 20,)
                    ),
                    const Text("Register", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  ],
                ),
                const SizedBox(height: 10,),
                Form(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  height: 60,
                                  width: 170,
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                        labelText: "Firstname",
                                        labelStyle: TextStyle(fontSize: 15)
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 60,
                                  width: 170,
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                        labelText: "Lastname",
                                        labelStyle: TextStyle(fontSize: 15)
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          
                            const SizedBox(height: 20,),
                            SizedBox(
                              height: 60,
                              width: 350,
                              child: TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                decoration: const InputDecoration(
                                    labelText: "Email",
                                    labelStyle: TextStyle(fontSize: 15)
                                ),
                              ),
                            ),
                            const SizedBox(height: 20,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  height: 60,
                                  width: 170,
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                        labelText: "Your age",
                                        labelStyle: TextStyle(fontSize: 15)
                                    ),
                                  ),
                                ),
                                SizedBox(
                                    height: 60,
                                    width: 170,
                                    child: DropdownButtonFormField<dynamic>(
                                        decoration: const InputDecoration(
                                            labelText: "Gender",
                                            labelStyle: TextStyle(fontSize: 15)
                                        ),
                                        items: controller.gender.map((eachGender) {
                                          return DropdownMenuItem(
                                            child: Text(eachGender),
                                            value: eachGender,
                                          );
                                        }).toList(),
                                        onChanged: (value) {
                                        }
                                    )
                                ),
                              ],
                            ),
                            const SizedBox(height: 20,),
                            SizedBox(
                              height: 60,
                              width: 350,
                              child: TextFormField(
                                keyboardType: TextInputType.phone,
                                decoration: const InputDecoration(
                                    labelText: "Phone Number",
                                    labelStyle: TextStyle(fontSize: 15)
                                ),
                              ),
                            ),
                            const SizedBox(height: 20,),
                            SizedBox(
                              height: 60,
                              width: 350,
                              child: TextFormField(
                                obscureText: true,
                                decoration: const InputDecoration(
                                    labelText: "Password",
                                    labelStyle: TextStyle(fontSize: 15)
                                ),
                              ),
                            ),
                            const SizedBox(height: 50 ,),
                            SizedBox(
                              height: 60,
                              width: 350,
                              child: ElevatedButton(
                                onPressed: (){
                                  // Navigator.of(context).push(MaterialPageRoute(
                                  //     builder: (context)=> const Home
                                  // )
                                  // );
                                },
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(40)
                                    ),
                                    primary: Colors.green
                                ),
                                child: const Text(
                                  "Register",
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
                    )
                )
              ],
            ),
          );
        }
      ),
    );
  }
}

