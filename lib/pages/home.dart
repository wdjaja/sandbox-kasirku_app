import 'package:flutter/material.dart';
import 'package:kasirku_app/colors.dart';
import 'package:kasirku_app/components/components.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

part 'sections/matric_home_section.dart';
part 'sections/today_home_section.dart';
part 'sections/quick_home_section.dart';
part 'sections/order_home_section.dart';
part 'sections/stock_home_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          spacing: 12,
          children: [
            CircleAvatar(foregroundImage: AssetImage('assets/images/ava2.png')),
            RegularText.semiBold('Adi Wijaya ARN202-37191'),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(onPressed: () {}, icon: Icon(LucideIcons.bell)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: 18,
          children: [
            _MatricHomeSection(),
            _QuickHomeSection(),
            RegularText.semiBold('OPERASIONAL TOKO'),
            _TodayHomeSection(),
            _StockHomeSection(),
            _OrderHomeSection(),
          ],
        ),
      ),
    );
  }
}
