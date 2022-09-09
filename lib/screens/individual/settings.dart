import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {

  bool _isDarkTheme = false;
  bool _biometricOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                        icon: const Icon(Iconsax.arrow_left, size: 20 ,)
                    ),
                    const Text("Settings", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              const Divider(
                thickness: 1,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  children: [
                    _listTiles(context, "View Profile", Icons.account_circle_outlined),
                    _listTiles(context, "Account Settings", Icons.manage_accounts_outlined),
                  ],
                ),
              ),
              const Divider(
                thickness: 1,
              ),
              const Text("Display", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey, fontSize: 15),),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  children: [
                    ListTile(
                      horizontalTitleGap: 0,
                      leading: const Icon(Icons.dark_mode_outlined, color: Colors.green,),
                      trailing: Switch(
                        activeColor: Colors.green,
                        value: _isDarkTheme,
                        onChanged: (bool value) {
                          setState(() {
                            _isDarkTheme = !_isDarkTheme;
                          });
                        }
                      ),
                      title: const Text("Theme Dark"),
                    )
                  ],
                ),
              ),
              const Divider(
                thickness: 1,
              ),
              const Text("Security", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey, fontSize: 15),),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  children: [
                    ListTile(
                      horizontalTitleGap: 0,
                      leading: const Icon(Icons.fingerprint, color: Colors.green,),
                      trailing: Switch(
                          activeColor: Colors.green,
                          value: _biometricOn,
                          onChanged: (bool value) {
                            setState(() {
                              _biometricOn = !_biometricOn;
                            });
                          }
                      ),
                      title: const Text("Biometrics"),
                    ),
                    _listTiles(context, "Change Password", Icons.vpn_key_outlined),
                  ],
                ),
              ),
              const Divider(
                thickness: 1,
              ),
              const Text("Help", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey, fontSize: 15),),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  children: [
                    _listTiles(context, "Report", Icons.warning_amber),
                    _listTiles(context, "Contact Us", Icons.phone_outlined),
                  ],
                ),
              ),
              const Divider(
                thickness: 1,
              ),
              const Text("Legal", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey, fontSize: 15),),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  children: [
                    _listTiles(context, "T/C & Pricacy", Icons.policy_outlined),
                    _listTiles(context, "Logout", Icons.logout),
                  ],
                ),
              ),
            ],
          ),
        )
      ),
    );
  }

  ListTile _listTiles(BuildContext context, String titleText, IconData leadingIcons){
    return ListTile(
      horizontalTitleGap: 0,
      leading: Icon(leadingIcons, color: Colors.green,),
      title: Text(titleText),
      onTap: () {},
    );
  }

}
