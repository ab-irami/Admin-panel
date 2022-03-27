import 'package:admin_panel_app/pages/overview/widgets/info_card.dart';
import 'package:flutter/material.dart';

class OverViewCardMedium extends StatelessWidget {
  const OverViewCardMedium({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            InfoCard(
              title: 'Rides in progress',
              value: 7,
              onTap: () {},
              topColor: Colors.orange,
            ),
            SizedBox(width: _width / 64),
            InfoCard(
              title: 'Packages delivered',
              value: 17,
              onTap: () {},
              topColor: Colors.lightGreen,
            ),
          ],
        ),
        SizedBox(height: _width / 64),
        Row(
          children: [
            InfoCard(
              title: 'Cancelled Delivery',
              value: 5,
              onTap: () {},
              topColor: Colors.redAccent,
            ),
            SizedBox(width: _width / 64),
            InfoCard(
              title: 'Scheduled deliveries',
              value: 6,
              onTap: () {},
              topColor: Colors.blueAccent,
            ),
          ],
        ),
      ],
    );
  }
}
