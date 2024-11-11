import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tixtrade/screens/ticket_view.dart';
import 'package:tixtrade/utils/app_info_list.dart';
import '../model/concert_model.dart';
import '../utils/app_styles.dart';
import '../widgets/concert_ticekt_card.dart';
import '../widgets/double_text_widget.dart';
import 'hotel_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good Morning, Anubhav',
                          style: Styles.headLineStyle3,
                        ),
                        const Gap(5),
                        Text(
                          'Book Tickets',
                          style: Styles.headLineStyle1,
                        ),
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/img_1.png'),
                        ),
                      ),
                    ),
                  ],
                ),
                const Gap(25),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Colors.grey, // Better neutral color for icons
                      ),
                      const Gap(5),
                      Text(
                        'Search',
                        style: Styles.headLineStyle4,
                      ),
                    ],
                  ),
                ),
                const Gap(40),
                const AppDoubleTextWidget(
                  bigText: 'Upcoming Concerts',
                  smallText: 'View All',
                ),
              ],
            ),
          ),
          const Gap(15),
          ConcertTicketList(tickets: concertTickets),
          const Gap(15),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const AppDoubleTextWidget(
              bigText: 'Hotels',
              smallText: 'View All',
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: (hotelList)
                  .map((singleHotel) => HotelScreen(hotel: singleHotel))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}

final List<ConcertTicket> concertTickets = [
  ConcertTicket(
    name: 'Rock Fest 2024',
    venue: 'Madison Square Garden',
    date: DateTime(2024, 5, 20),
    price: 99.99,
    imageUrl: 'assets/images/1.jpg',
  ),
  ConcertTicket(
    name: 'Jazz Night',
    venue: 'Blue Note',
    date: DateTime(2024, 6, 15),
    price: 59.99,
    imageUrl: 'assets/images/2.jpg',
  ),
  ConcertTicket(
    name: 'EDM Extravaganza',
    venue: 'Electric Daisy Carnival',
    date: DateTime(2024, 7, 30),
    price: 149.99,
    imageUrl: 'assets/images/3.jpeg',
  ),
];
