import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class RewardScreen extends StatelessWidget {
  const RewardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Rewards',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff526799),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            // Reward Tiles

            const Gap(10),

            Column(
              children: [
                rewardTile(
                    context,
                    'You\'ve got a new award',
                    'You have 2 flights in a year',
                    FluentSystemIcons.ic_fluent_lightbulb_filament_filled),
                rewardTile(
                    context,
                    'Bonus Points Awarded',
                    'Earn 1000 bonus miles this month',
                    FluentSystemIcons.ic_fluent_star_filled),
                rewardTile(
                    context,
                    'Holiday Special',
                    'Double miles for holiday flights',
                    FluentSystemIcons.ic_fluent_calendar_add_filled),
              ],
            ),
            const Gap(25),

            // Accumulated Miles
            const Text(
              'Accumulated Miles',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Column(
              children: [
                const Gap(15),
                const Text(
                  '250',
                  style: TextStyle(
                    fontSize: 45,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Gap(20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Miles Accrued', style: TextStyle(fontSize: 16)),
                    Text('23 Nov 2024', style: TextStyle(fontSize: 16)),
                  ],
                ),
                const Gap(20),
                Divider(color: Colors.grey.shade300),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('148',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text('Miles', style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('Indigo',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text('Received From',
                            style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                  ],
                ),
                const Gap(12),
                Divider(color: Colors.grey.shade300),
                const Gap(12),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('22',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text('Miles', style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('Akasa Airline',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text('Received From',
                            style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                  ],
                ),
                const Gap(24),
                const Text(
                  'How to get more miles',
                  style: TextStyle(fontSize: 16, color: Color(0xff526799)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget rewardTile(
      BuildContext context, String title, String description, IconData icon) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Stack(
        children: [
          Container(
            height: 90,
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xff526799),
              borderRadius: BorderRadius.circular(18),
            ),
          ),
          Positioned(
            right: -45,
            top: -40,
            child: Container(
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.transparent,
                border: Border.all(
                  width: 18,
                  color: const Color(0xff264cd2),
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            child: Row(
              children: [
                CircleAvatar(
                  maxRadius: 25,
                  backgroundColor: Colors.white,
                  child: Icon(
                    icon,
                    color: const Color(0xff526799),
                    size: 27,
                  ),
                ),
                const Gap(12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      description,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.white.withOpacity(0.9),
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
