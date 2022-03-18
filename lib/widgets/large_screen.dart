import 'package:admin_panel_app/widgets/side_menu.dart';
import 'package:flutter/material.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: SideMenu(),
        ),
        Expanded(
          child: Container(
            color: Colors.amber,
          ),
          flex: 5,
        ),
      ],
    );
  }
}
