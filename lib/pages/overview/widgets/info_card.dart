import 'package:admin_panel_app/constants/style.dart';
import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  final String? title;
  final int? value;
  final Color? topColor;
  final bool? isActive;
  final VoidCallback? onTap;
  const InfoCard({
    Key? key,
    this.title,
    this.value,
    this.topColor,
    this.isActive,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 136,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, 6),
                color: lightGrey.withOpacity(.1),
                blurRadius: 12.0,
              )
            ],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      color: topColor ?? active,
                      height: 5,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Container(),
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '$title\n',
                      style: TextStyle(
                        fontSize: 16, color: isActive == true ? active : lightGrey,
                      ),
                    ),
                    TextSpan(
                      text: '$value',
                      style: TextStyle(
                        fontSize: 40, color: isActive == true ? active : dark,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              Expanded(
                child: Container(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
