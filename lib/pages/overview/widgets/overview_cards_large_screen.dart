import 'package:admin_panel_app/pages/overview/widgets/info_card.dart';
import 'package:flutter/material.dart';

class OverViewCardLarge extends StatelessWidget {
  const OverViewCardLarge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        InfoCard(
          title: 'Rides in progress',
          value: 7,
          onTap: (){},
          topColor: Colors.orange,
        ),
        SizedBox(width: _width / 64),
        InfoCard(
          title: 'Packages delivered',
          value: 17,
          onTap: (){},
          topColor: Colors.lightGreen,
        ),
        SizedBox(width: _width / 64),
        InfoCard(
          title: 'Cancelled Delivery',
          value: 5,
          onTap: (){},
          topColor: Colors.redAccent,
        ),
        SizedBox(width: _width / 64),
        InfoCard(
          title: 'Scheduled deliveries',
          value: 6,
          onTap: (){},
          topColor: Colors.blueAccent,
        ),
      ],
    );
  }
}
