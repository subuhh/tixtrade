import 'package:barcode_widget/barcode_widget.dart';
import 'package:tixtrade/utils/app_styles.dart';
import 'package:tixtrade/widgets/column_layout.dart';
import 'package:tixtrade/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../widgets/layout_builder_widget.dart';

class TicketScreen extends StatefulWidget {
  const TicketScreen({super.key});

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
  bool showFlightTicket = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            children: [
              const Gap(40),
              GestureDetector(
                onTap: () {
                  setState(() {
                    showFlightTicket = !showFlightTicket;
                  });
                },
                child: Text(
                  'Tickets',
                  style: Styles.headLineStyle1,
                ),
              ),
              const Gap(20),
              const AppTicketTabs(
                firstTab: 'Upcoming',
                secondTab: 'Previous',
              ),
              const Gap(20),

              // Conditionally display flight ticket or hotel booking based on toggle
              if (showFlightTicket)
                // Flight Ticket Section
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(21),
                      bottomLeft: Radius.circular(21),
                    ),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.flight,
                              color: Styles.primaryColor, size: 28),
                          const SizedBox(width: 8),
                          Text(
                            'Flight Booking',
                            style: Styles.headLineStyle2,
                          ),
                        ],
                      ),
                      const Gap(10),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppColumnLayout(
                            firstText: 'Anubhav',
                            secondText: 'Passenger',
                            alignment: CrossAxisAlignment.start,
                            isColor: true,
                          ),
                          AppColumnLayout(
                            firstText: '5221345678',
                            secondText: 'Passport',
                            alignment: CrossAxisAlignment.end,
                            isColor: true,
                          ),
                        ],
                      ),
                      const Gap(20),
                      const AppLayoutBuilderWidget(
                        sections: 6,
                        isColor: true,
                      ),
                      const Gap(20),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppColumnLayout(
                            firstText: '4545464464747444',
                            secondText: 'Number of E-Ticket',
                            alignment: CrossAxisAlignment.start,
                            isColor: true,
                          ),
                          AppColumnLayout(
                            firstText: 'B4545454',
                            secondText: 'Booking Code',
                            alignment: CrossAxisAlignment.end,
                            isColor: true,
                          ),
                        ],
                      ),
                      const Gap(20),
                      const AppLayoutBuilderWidget(
                        sections: 6,
                        isColor: true,
                      ),
                      const Gap(20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/images/visa.png',
                                    scale: 11,
                                  ),
                                  Text(
                                    ' *** 2334',
                                    style: Styles.headLineStyle3,
                                  ),
                                ],
                              ),
                              const Gap(5),
                              Text(
                                'Payment Method',
                                style: Styles.headLineStyle4,
                              ),
                            ],
                          ),
                          const AppColumnLayout(
                            firstText: '₹249.99',
                            secondText: 'Price',
                            alignment: CrossAxisAlignment.end,
                            isColor: true,
                          ),
                        ],
                      ),
                      const Gap(20),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: BarcodeWidget(
                            data: 'https://github.com/themistdev',
                            barcode: Barcode.code128(),
                            drawText: false,
                            color: Styles.textColor,
                            width: double.infinity,
                            height: 70,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              else
                // Hotel Booking Section
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(21),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.hotel,
                              color: Styles.primaryColor, size: 28),
                          const SizedBox(width: 8),
                          Text(
                            'Hotel Booking',
                            style: Styles.headLineStyle2,
                          ),
                        ],
                      ),
                      const Gap(15),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppColumnLayout(
                            firstText: 'Grand Hyatt',
                            secondText: 'Hotel Name',
                            alignment: CrossAxisAlignment.start,
                            isColor: true,
                          ),
                          AppColumnLayout(
                            firstText: 'Mumbai',
                            secondText: 'Location',
                            alignment: CrossAxisAlignment.end,
                            isColor: true,
                          ),
                        ],
                      ),
                      const Gap(20),
                      const AppLayoutBuilderWidget(
                        sections: 6,
                        isColor: true,
                      ),
                      const Gap(20),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppColumnLayout(
                            firstText: '22 Nov 2024',
                            secondText: 'Check-in',
                            alignment: CrossAxisAlignment.start,
                            isColor: true,
                          ),
                          AppColumnLayout(
                            firstText: '26 Nov 2024',
                            secondText: 'Check-out',
                            alignment: CrossAxisAlignment.end,
                            isColor: true,
                          ),
                        ],
                      ),
                      const Gap(20),
                      const AppLayoutBuilderWidget(
                        sections: 6,
                        isColor: true,
                      ),
                      const Gap(20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  const Text(
                                    'UPI ',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                  Icon(Icons.credit_card,
                                      color: Styles.primaryColor),
                                ],
                              ),
                              const Gap(5),
                              Text(
                                'Payment Method',
                                style: Styles.headLineStyle4,
                              ),
                            ],
                          ),
                          const AppColumnLayout(
                            firstText: '₹6,000',
                            secondText: 'Total Price',
                            alignment: CrossAxisAlignment.end,
                            isColor: true,
                          ),
                        ],
                      ),
                      const Gap(20),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: BarcodeWidget(
                            data: 'https://github.com/themistdev/hotel_booking',
                            barcode: Barcode.code128(),
                            drawText: false,
                            color: Styles.textColor,
                            width: double.infinity,
                            height: 70,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              const Gap(20),
            ],
          ),
        ],
      ),
    );
  }
}
