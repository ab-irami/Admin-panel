import 'package:admin_panel_app/pages/overview/widgets/info_card_small.dart';
import 'package:flutter/material.dart';

class OverViewCardSmall extends StatelessWidget {
  const OverViewCardSmall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      height: 400,
      child: Column(
        children: [
          InfoCardSmall(
            title: 'Rides in progress',
            value: 7,
            onTap: () {},
            isActive: true,
          ),
          SizedBox(width: _width / 64),
          InfoCardSmall(
            title: 'Packages delivered',
            value: 17,
            onTap: () {},
          ),
          SizedBox(width: _width / 64),
          InfoCardSmall(
            title: 'Cancelled Delivery',
            value: 5,
            onTap: () {},
          ),
          SizedBox(width: _width / 64),
          InfoCardSmall(
            title: 'Scheduled deliveries',
            value: 6,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
