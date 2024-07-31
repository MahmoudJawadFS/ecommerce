import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class profilePage extends StatefulWidget {
  const profilePage({super.key});
  @override
  State<StatefulWidget> createState() => _profilePageState();
}

class _profilePageState extends State<profilePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Color.fromARGB(255, 243, 240, 240),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'General',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 245, 244, 244)),
                  child: const Padding(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Icon(Icons.person_2_outlined),
                        SizedBox(width: 30),
                        Text(
                          'Edit Profile',
                          style: TextStyle(fontSize: 18),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 245, 244, 244)),
                  child: const Padding(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Icon(Icons.lock_clock_outlined),
                        SizedBox(width: 30),
                        Text(
                          'Change Password',
                          style: TextStyle(fontSize: 18),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 245, 244, 244)),
                  child: const Padding(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Icon(Icons.notifications),
                        SizedBox(width: 30),
                        Text(
                          'Notificaions',
                          style: TextStyle(fontSize: 18),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 245, 244, 244)),
                  child: const Padding(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Icon(Icons.security),
                        SizedBox(width: 30),
                        Text(
                          'Security',
                          style: TextStyle(fontSize: 18),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 245, 244, 244)),
                  child: const Padding(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Icon(Icons.language),
                        SizedBox(width: 30),
                        Text(
                          'Language',
                          style: TextStyle(fontSize: 18),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                  ),
                ),
              ),
              // ------------
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Referencess',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),

              const SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 245, 244, 244)),
                  child: const Padding(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Icon(Icons.badge_outlined),
                        SizedBox(width: 30),
                        Text(
                          'Legal and Policies',
                          style: TextStyle(fontSize: 18),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 245, 244, 244)),
                  child: const Padding(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Icon(Icons.live_help_outlined),
                        SizedBox(width: 30),
                        Text(
                          'Help & Support',
                          style: TextStyle(fontSize: 18),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 245, 244, 244)),
                  child: const Padding(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Icon(
                          Icons.logout,
                          color: Colors.red,
                        ),
                        SizedBox(width: 30),
                        Text(
                          'Logout',
                          style: TextStyle(fontSize: 18, color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
