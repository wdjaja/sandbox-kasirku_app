import 'package:flutter/material.dart';
import 'package:kasirku_app/colors.dart';
import 'package:kasirku_app/components/components.dart';
import 'package:kasirku_app/pages/login.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profil')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: 32,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 100,
                  child: ClipRRect(
                    borderRadius: BorderRadiusGeometry.circular(100),
                    child: Image.asset(
                      'assets/images/ava2.png',
                      height: 140,
                      width: 140,
                      alignment: Alignment.center,
                    ),
                  ),
                ),
                SubtitleText(text: 'Adi Wijaya', textAlign: TextAlign.center),
              ],
            ),
            Column(
              children: [
                buildTile(label: 'Ubah Profil'),
                Divider(height: 1),
                buildTile(label: 'Perangkat Cetak'),
                Divider(height: 1),
                buildTile(label: 'Bahasa'),
                Divider(height: 1),
                buildTile(label: 'Informasi Aplikasi'),
                Divider(height: 1),
                buildTile(label: 'Layanan pelanggan'),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (_) => LoginPage()),
                  (_) => false,
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColor.codeRed,
              ),
              child: Text('Keluar'),
            ),
            RegularText(text: 'v1.0.1', textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }

  Widget buildTile({required String label}) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Row(
          spacing: 12,
          children: [
            Expanded(
              child: SubtitleText(text: label, weight: FontWeight.w500),
            ),
            Icon(LucideIcons.chevronRight, size: 20, color: AppColor.text),
          ],
        ),
      ),
    );
  }
}
