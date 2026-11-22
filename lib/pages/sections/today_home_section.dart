part of '../home.dart';

class _TodayHomeSection extends StatelessWidget {
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
        spacing: 12,
        children: [
          Row(
            spacing: 4,
            children: [
              Expanded(child: SubtitleText(text: 'Pesanan hari ini')),
              RegularText(text: '24 Order'),
            ],
          ),
          Row(
            spacing: 12,
            children: [
              _buildCard(
                color: AppColor.oranges,
                title: '3',
                subtitle: 'Menunggu',
              ),
              _buildCard(
                color: AppColor.primary,
                title: '5',
                subtitle: 'Diproses',
              ),
              _buildCard(
                color: AppColor.granted,
                title: '16',
                subtitle: 'Selesai',
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCard({
    required String title,
    required String subtitle,
    required Color color,
  }) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: color.withValues(alpha: .1),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 2,
          children: [
            SubtitleText(text: title, color: color),
            RegularText(text: subtitle, size: 12, color: color),
          ],
        ),
      ),
    );
  }
}
