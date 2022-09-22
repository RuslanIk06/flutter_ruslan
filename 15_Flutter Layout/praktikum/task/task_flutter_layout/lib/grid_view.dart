import 'package:flutter/material.dart';
import 'package:task_flutter_layout/circle.dart';
import 'font_style.dart';

class GridViewDisplay extends StatelessWidget {
  GridViewDisplay({super.key});

  final listIcon = const [
    Icon(Icons.ad_units, color: whiteColors),
    Icon(Icons.alarm, color: whiteColors),
    Icon(Icons.place, color: whiteColors),
    Icon(Icons.abc_rounded, color: whiteColors),
    Icon(Icons.safety_check, color: whiteColors),
    Icon(Icons.e_mobiledata_outlined, color: whiteColors),
    Icon(Icons.wallet, color: whiteColors),
    Icon(Icons.safety_check_outlined, color: whiteColors),
    Icon(Icons.vaccines_rounded, color: whiteColors),
    Icon(Icons.kayaking, color: whiteColors),
    Icon(Icons.tab_outlined, color: whiteColors),
    Icon(Icons.g_mobiledata, color: whiteColors),
    Icon(Icons.mail_lock_rounded, color: whiteColors),
    Icon(Icons.yard, color: whiteColors),
    Icon(Icons.face_retouching_natural_outlined, color: whiteColors),
    Icon(Icons.safety_check_outlined, color: whiteColors),
    Icon(Icons.tab_outlined, color: whiteColors),
    Icon(Icons.vaping_rooms_outlined, color: whiteColors),
    Icon(Icons.qr_code_outlined, color: whiteColors),
    Icon(Icons.safety_divider_outlined, color: whiteColors),
    Icon(Icons.dashboard_customize, color: whiteColors),
    Icon(Icons.mark_email_unread_outlined, color: whiteColors),
    Icon(Icons.bathtub, color: whiteColors),
    Icon(Icons.camera, color: whiteColors),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
      ),
      itemBuilder: (context, index) => Circle(listIcon[index]),
      itemCount: listIcon.length,
    );
  }
}
