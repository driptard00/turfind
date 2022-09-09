import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:turfind/auth/register.dart';
import 'package:turfind/controller/authStateController.dart';
import 'package:turfind/controller/individualStateController.dart';
import 'package:turfind/routes/app_routes_name.dart';


class LoginAuth extends StatelessWidget {
  LoginAuth({Key? key}) : super(key: key);

  final AuthStateController _authStateController = Get.put(AuthStateController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: GetBuilder<AuthStateController>(
            builder: (controller) {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    Image.asset("images/turfindlogo.png", height: 100, width: 200,),
                    const Text("Sign in to continue", style: TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),),
                    const SizedBox(height: 40,),
                    Form(
                        child: Column(
                          children: [
                            Container(
                              height: 60,
                              width: 350,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                border: Border.all(
                                  color: Colors.black
                                )
                              ),
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  labelText: "Email",
                                  border: InputBorder.none,
                                  labelStyle: TextStyle(color: Colors.black),
                                  prefixIcon: Icon(Icons.mail_outline, color: Colors.green, size: 22,)
                                ),
                              ),
                            ),
                            const SizedBox(height: 30),
                            Container(
                              height: 60,
                              width: 350,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  border: Border.all(
                                      color: Colors.black
                                  )
                              ),
                              child: TextFormField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    labelText: "Password",
                                    prefixIcon: const Icon(Iconsax.lock, color: Colors.green, size: 22),
                                    labelStyle: const TextStyle(color: Colors.black),
                                    suffixIcon: IconButton(
                                        onPressed: () {
                                          controller.togglePassword();
                                        },
                                        icon: Icon(
                                            (controller.hidePassword == false) ?
                                            (Iconsax.eye_slash) :
                                            (Iconsax.eye),
                                          color: Colors.green,
                                          size: 22
                                        )
                                    )
                                ),
                                obscureText: controller.hidePassword,
                              ),
                            ),
                            const SizedBox(height: 50,),
                            SizedBox(
                              height: 60,
                              width: 350,
                              child: ElevatedButton(
                                onPressed: (){
                                  Get.toNamed(mainholder);
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40)
                                  ),
                                  primary: Colors.green
                                ),
                                child: const Text(
                                  "Sign In",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18
                                  ),
                                ),
                              ),
                            ),
                           const SizedBox(height: 20,),
                           const InkWell(
                              child: Text(
                                "Forgot Password ?",
                                style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ],
                        )
                    ),
                  ],
                ),
              );
            }
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Don't have an account ?",
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
              ),
            ),
            InkWell(
              onTap: (){
                showModalBottomSheet(
                    context: context,
                    builder: (context)=> Register(),
                    isScrollControlled: true,
                    enableDrag: false,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30)
                        )
                    ),

                );
              },
              child: const Text(
                "Register",
                style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
