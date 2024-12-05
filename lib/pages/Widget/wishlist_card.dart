part of 'widget.dart';

class WishlistCard extends StatelessWidget {
  const WishlistCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: backgroundColor3),
      child: Row(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'assets/image_shoes.png',
                width: 80,
              )),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sepatu Gunung Ando',
                  style: primaryTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 16,
                  ),
                  maxLines: 2,
                ),
                Text(
                  NumberFormat.currency(
                          symbol: 'IDR ', locale: 'id_ID', decimalDigits: 0)
                      .format(200000),
                  style: priceTextStyle.copyWith(
                      fontSize: 15, fontWeight: bold, color: primaryColor),
                ),
              ],
            ),
          ),
          GestureDetector(
              onTap: () {},
              child: Image.asset(
                'assets/button_wishlist_blue.png',
                width: 34,
              )),
        ],
      ),
    );
  }
}
