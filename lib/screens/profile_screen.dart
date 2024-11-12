import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tixtrade/screens/login_screen.dart';
import 'package:tixtrade/screens/reward_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff526799),
        elevation: 0,
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          children: [
            // User Info Section
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xff526799),
                borderRadius: BorderRadius.circular(18),
              ),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage(
                        'assets/images/user_profile.png'), // Placeholder image or user photo
                  ),
                  const Gap(16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Anubhav Bindal',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const Text(
                        'admin@gmail.com',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white70,
                        ),
                      ),
                      const Gap(4),
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                        ),
                        onPressed: () {},
                        icon:
                            const Icon(FluentSystemIcons.ic_fluent_edit_filled),
                        label: const Text('Edit Profile'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Gap(30),

            const Gap(10),
            ListTile(
              leading: const Icon(
                FluentSystemIcons.ic_fluent_gift_filled,
                color: Color(0xff526799),
                size: 24,
              ),
              title: const Text(
                'Rewards',
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RewardScreen()),
                );
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.notifications,
                color: Color(0xff526799),
                size: 24,
              ),
              title: const Text(
                'Notifications',
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.lock,
                color: Color(0xff526799),
                size: 24,
              ),
              title: const Text(
                'Privacy Settings',
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                FluentSystemIcons.ic_fluent_person_add_filled,
                color: Color(0xff526799),
                size: 24,
              ),
              title: const Text(
                'Invite Friends',
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.gavel,
                color: Color(0xff526799),
                size: 24,
              ),
              title: const Text(
                'Terms & Conditions',
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                FluentSystemIcons.ic_fluent_notebook_question_mark_filled,
                color: Color(0xff526799),
                size: 24,
              ),
              title: const Text(
                'FAQ',
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                FluentSystemIcons.ic_fluent_sign_out_filled,
                color: Color(0xff526799),
                size: 24,
              ),
              title: const Text(
                'Logout',
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                  (route) => false,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
