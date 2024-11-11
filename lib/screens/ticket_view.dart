import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tixtrade/utils/app_layout.dart';
import 'package:tixtrade/utils/app_styles.dart';
import 'package:tixtrade/widgets/column_layout.dart';
import 'package:tixtrade/widgets/layout_builder_widget.dart';
import 'package:tixtrade/widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;

  const TicketView({super.key, required this.ticket, this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    // Safe access to avoid null pointer issues
    final fromCode = ticket['from']?['code'] ?? 'N/A';
    final toCode = ticket['to']?['code'] ?? 'N/A';
    final flyingTime = ticket['flying_time'] ?? 'N/A';
    final date = ticket['date'] ?? 'N/A';
    final departureTime = ticket['departure_time'] ?? 'N/A';
    final number = ticket['number']?.toString() ?? 'N/A';

    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getHeight(190),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getWidth(16)),
        child: Column(
          children: [
            // Top Section
            Container(
              decoration: BoxDecoration(
                color: isColor == null
                    ? const Color(0xFF526799)
                    : Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(21),
                  topRight: Radius.circular(21),
                ),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        fromCode,
                        style: isColor == null
                            ? Styles.headLineStyle3
                            .copyWith(color: Colors.white)
                            : Styles.headLineStyle3,
                      ),
                      const Spacer(),
                      ThickContainer(isColor: isColor),
                      const Spacer(),
                      Text(
                        toCode,
                        style: isColor == null
                            ? Styles.headLineStyle3
                            .copyWith(color: Colors.white)
                            : Styles.headLineStyle3,
                      ),
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        ticket['from']?['name'] ?? 'Unknown',
                        style: isColor == null
                            ? Styles.headLineStyle4
                            .copyWith(color: Colors.white)
                            : Styles.headLineStyle4,
                      ),
                      Text(
                        flyingTime,
                        style: isColor == null
                            ? Styles.headLineStyle3
                            .copyWith(color: Colors.white)
                            : Styles.headLineStyle3,
                      ),
                      Text(
                        ticket['to']?['name'] ?? 'Unknown',
                        style: isColor == null
                            ? Styles.headLineStyle4
                            .copyWith(color: Colors.white)
                            : Styles.headLineStyle4,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Middle Section
            Container(
              color: isColor == null ? Styles.orangeColor : Colors.white,
              child: Row(
                children: [
                  // Other widgets and layout
                ],
              ),
            ),
            // Bottom Section
            Container(
              decoration: BoxDecoration(
                color: isColor == null ? Styles.orangeColor : Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(isColor == null ? 21 : 0),
                  bottomRight: Radius.circular(isColor == null ? 21 : 0),
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppColumnLayout(
                    firstText: date,
                    secondText: 'Date',
                    alignment: CrossAxisAlignment.start,
                    isColor: isColor,
                  ),
                  AppColumnLayout(
                    firstText: departureTime,
                    secondText: 'Departure Time',
                    alignment: CrossAxisAlignment.center,
                    isColor: isColor,
                  ),
                  AppColumnLayout(
                    firstText: number,
                    secondText: 'Number',
                    alignment: CrossAxisAlignment.end,
                    isColor: isColor,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

