part of '../cart.dart';

class _ItemCartSection extends StatelessWidget {
  const new();

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Row(
          spacing: 12,
          children: [
            Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppColor.medGround.withValues(alpha: .3),
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
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 2,
                children: [
                  RegularText.semiBold('Kopi Espresso'),
                  RegularText(text: '20.000 / pcs'),
                ],
              ),
            ),
            InkWell(
              onTap: () {},
              child: Icon(LucideIcons.squareMinus, color: AppColor.codeRed),
            ),
            RegularText.semiBold('4'),
            InkWell(
              onTap: () {},
              child: Icon(LucideIcons.squarePlus, color: AppColor.primary),
            ),
          ],
        );
      },
      separatorBuilder: (context, index) {
        return SizedBox(height: 12);
      },
      itemCount: 1,
    );
  }
}
