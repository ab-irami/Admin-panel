import 'package:admin_panel_app/constants/style.dart';
import 'package:admin_panel_app/pages/overview/widgets/bar_chart.dart';
import 'package:admin_panel_app/pages/overview/widgets/revenue_info.dart';
import 'package:admin_panel_app/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class RevenueSectionSmall extends StatelessWidget {
  const RevenueSectionSmall({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      margin: const EdgeInsets.symmetric(vertical: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 6),
            color: lightGrey.withOpacity(.1),
            blurRadius: 12,
          ),
        ],
        border: Border.all(color: lightGrey, width: .5),
      ),  
      child: Column(
        children: [
          Container(
            height: 260,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomText(
                  text: 'Revenue Chart',
                  size: 20,
                  weight: FontWeight.bold,
                  color: lightGrey,
                ),
                Container(
                  width: 600,
                  height: 200,
                  child: SimpleBarChart.withSampleData(),
                ),
              ],
            ),
          ),
          Container(
            height: 1,
            width: 126,
            color: lightGrey,
          ),
          Container(
            height: 260,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: const [
                    RevenueInfo(
                      title: 'Today\'s Revenue',
                      amount: '23',
                    ),
                    RevenueInfo(
                      title: 'Last 7 days',
                      amount: '223',
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  children: const [
                    RevenueInfo(
                      title: 'Last 30 days',
                      amount: '1,223',
                    ),
                    RevenueInfo(
                      title: 'Last 7 days',
                      amount: '5,043',
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),    
    );
  }
}