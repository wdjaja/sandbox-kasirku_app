part of '../home.dart';

class _QuickHomeSection extends StatelessWidget {
  const new();

  @override
  Widget build(BuildContext context) {
    final white = AppColor.superWhite;
    return Row(
      spacing: 16,
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppColor.primary,
              border: Border.all(color: AppColor.primary),
            ),
            child: Row(
              spacing: 8,
              children: [
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(LucideIcons.wallet, color: AppColor.primary),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RegularText.semiBold('Kasir Baru', color: white),
                      RegularText(
                        text: 'Buat penjualan',
                        size: 12,
                        color: white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: AppColor.medGround),
            ),
            child: Row(
              spacing: 8,
              children: [
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: AppColor.granted,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(LucideIcons.receiptText, color: white),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RegularText.semiBold('Pesanan'),
                      RegularText(text: 'Kelola order', size: 12),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
