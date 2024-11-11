import 'package:barcode_widget/barcode_widget.dart';
import 'package:tixtrade/screens/ticket_view.dart';
import 'package:tixtrade/utils/app_styles.dart';
import 'package:tixtrade/widgets/column_layout.dart';
import 'package:tixtrade/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../widgets/layout_builder_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: Stack(
          children: [
            ListView(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              children: [
                Gap(40),
                Text(
                  'Tickets',
                  style: Styles.headLineStyle1,
                ),
                Gap(20),
                const AppTicketTabs(
                    firstTab: 'Upcoming', secondTab: 'Previous'),
                Gap(20),
                // Container(
                //   padding: EdgeInsets.only(left: 15),
                //   child: const TicketView(
                //     // index: 0,
                //     // ticket: ticketList[0],
                //     // isColor: true,
                //   ),
                // ),
                const SizedBox(
                  height: 1,
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(21),
                          bottomLeft: Radius.circular(21))),
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
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
                      Gap(20),
                      const AppLayoutBuilderWidget(
                        sections: 6,
                        isColor: true,
                      ),
                      Gap(20),
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
                      Gap(20),
                      const AppLayoutBuilderWidget(
                        sections: 6,
                        isColor: true,
                      ),
                      Gap(20),
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
                                  )
                                ],
                              ),
                              Gap(5),
                              Text(
                                'Payment Method',
                                style: Styles.headLineStyle4,
                              )
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
                      Gap(20),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 5),
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
                      )
                    ],
                  ),
                ),
                Gap(20),
                // Container(
                //   padding: EdgeInsets.only(left: 15),
                //   child: const TicketView(
                //     // ticket: ticketList[0],
                //     // index: 0,
                //   ),
                // ),
              ],
            ),
            Positioned(
              left: 22,
              top: 295,
              child: Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Styles.textColor, width: 2)),
                child: CircleAvatar(
                  maxRadius: 4,
                  backgroundColor: Styles.textColor,
                ),
              ),
            ),
            Positioned(
              right: 22,
              top: 295,
              child: Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Styles.textColor, width: 2)),
                child: CircleAvatar(
                  maxRadius: 4,
                  backgroundColor: Styles.textColor,
                ),
              ),
            ),
          ],
        ));
  }
}
