part of '../home.dart';

class _StockHomeSection extends StatelessWidget {
  const new();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: AppColor.medGround),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: 8,
        children: [
          Row(
            spacing: 4,
            children: [
              Expanded(child: SubtitleText(text: 'Kesehatan stok')),
              RegularText(text: 'Kelola produk', color: AppColor.primary),
            ],
          ),
          RegularText(text: 'Pantau ketersediaan dari 654 produk', size: 12),
          Row(
            spacing: 12,
            children: [
              _buildCard(value: '6 stok menipis', color: AppColor.oranges),
              _buildCard(value: '2 stok habis', color: AppColor.codeRed),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCard({required String value, required Color color}) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: color.withValues(alpha: .1),
          borderRadius: BorderRadius.circular(12),
        ),
        child: RegularText.semiBold(value, color: color),
      ),
    );
  }
}
