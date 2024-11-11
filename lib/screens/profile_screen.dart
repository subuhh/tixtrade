import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const Gap(40),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 86,
                width: 86,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/img_1.png'))),
              ),
              const Gap(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    'Book Tickets',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const Gap(2),
                  Text('New-York',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade500)),
                  const Gap(8),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: const Color(0xfffef4f3),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xff526799),
                          ),
                          child: const Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        const Gap(5),
                        const Text(
                          'Premium Tears',
                          style: TextStyle(
                              color: Color(0xff526799),
                              fontWeight: FontWeight.w600),
                        ),
                        const Gap(5),
                      ],
                    ),
                  )
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      print('you are tapped');
                    },
                    child: const Text(
                      'Edit',
                      style: TextStyle(
                          color: Color(0xff526799),
                          fontWeight: FontWeight.w300),
                    ),
                  )
                ],
              )
            ],
          ),
          const Gap(8),
          Divider(
            color: Colors.grey.shade300,
          ),
          const Gap(8),
          Stack(
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
                            width: 18, color: const Color(0xff264cd2))),
                  )),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: Color(0xff526799),
                        size: 27,
                      ),
                    ),
                    const Gap(12),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'You\'ve got a new award',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 18),
                        ),
                        Text(
                          'You have 95 flights in a year',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white.withOpacity(0.9),
                              fontSize: 16),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          const Gap(25),
          const Text(
            'Accumulated Miles',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Column(
            children: [
              const Gap(15),
              const Text(
                '192802',
                style: TextStyle(
                    fontSize: 45,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
              const Gap(20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Miles Accrued',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    '23 May 2021',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              const Gap(20),
              Divider(
                color: Colors.grey.shade300,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('23 042',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('Miles', style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('Airline CO',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('Received From',
                          style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                ],
              ),
              const Gap(12),
              Divider(
                color: Colors.grey.shade300,
              ),
              const Gap(12),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('24', style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('Miles', style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('MacDonald\'s',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('Received From',
                          style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                ],
              ),
              const Gap(12),
              Divider(
                color: Colors.grey.shade300,
              ),
              const Gap(12),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('53 340',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('Miles', style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('Exuma',
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
              )
            ],
          )
        ],
      ),
    );
  }
}
