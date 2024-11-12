import 'package:flutter/material.dart';
import '../model/concert_model.dart';

class ConcertTicketCard extends StatelessWidget {
  final ConcertTicket ticket;

  const ConcertTicketCard({super.key, required this.ticket});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.55, // 40% of screen width
      margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 8.0,
        shadowColor: Colors.black.withOpacity(0.2),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            children: [
              // Image background with overlay
              Container(
                height: 300, // Adjust the height as needed
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      ticket.imageUrl,

                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  color: Colors.black
                      .withOpacity(0.3), // Overlay for better text contrast
                ),
              ),
              // Content inside the card
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ticket.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        ticket.venue,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.white70,
                        ),
                      ),
                      Text(
                        '${ticket.date.toLocal()}'.split(' ')[0],
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.white70,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        '₹${ticket.price}',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ConcertTicketList extends StatelessWidget {
  final List<ConcertTicket> tickets;

  const ConcertTicketList({super.key, required this.tickets});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220, // Adjust the height for the horizontal list
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: tickets.length,
        itemBuilder: (context, index) {
          return ConcertTicketCard(ticket: tickets[index]);
        },
      ),
    );
  }
}
