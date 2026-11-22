import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:kasirku_app/colors.dart';
import 'package:kasirku_app/components/components.dart';
import 'package:kasirku_app/pages/cart.dart';
import 'package:kasirku_app/pages/product.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class CatalogPage extends StatefulWidget {
  const new({super.key});

  @override
  State<CatalogPage> createState() => _CatalogPageState();
}

class _CatalogPageState extends State<CatalogPage> {
  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Katalog Produk'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => ProductPage()),
                );
              },
              icon: Icon(LucideIcons.box),
            ),
          ),
        ],
      ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            child: RegularFormInput(
              controller: searchController,
              hintText: 'Cari Nama Produk Atau SKU',
              icon: const Icon(LucideIcons.search, size: 22),
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              itemCount: 4,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                childAspectRatio: 3 / 4,
              ),
              itemBuilder: (context, index) {
                return CardProduct();
              },
            ),
          ),
        ],
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => CartPage()),
              );
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 24),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: AppColor.primary,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                spacing: 16,
                children: [
                  Icon(LucideIcons.shoppingCart, color: AppColor.superWhite),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RegularText.semiBold(
                          '4 Items',
                          color: AppColor.superWhite,
                        ),
                        RegularText.semiBold(
                          NumberFormat.currency(
                            locale: 'id',
                            symbol: 'Rp ',
                          ).format(80000),
                          color: AppColor.superWhite,
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    LucideIcons.squareChevronRight,
                    color: AppColor.superWhite,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class CardProduct extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: AppColor.medGround),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: 12,
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppColor.medGround.withValues(alpha: .4),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  'https://ui-avatars.com/api/?name=Kopi+Espresso&background=567B6E&color=fff',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          RegularText(text: 'Kopi Espresso'),
          SubtitleText(text: '20.000'),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              fixedSize: Size(double.infinity, 20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Text('Tambah'),
          ),
        ],
      ),
    );
  }
}
