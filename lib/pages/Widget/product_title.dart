part of 'widget.dart';

class ProductTitle extends StatelessWidget {
  const ProductTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'assets/image_shoes.png',
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sepatu Hiking Carlos New era',
                  style: primaryTextStyle.copyWith(
                      fontWeight: semiBold, fontSize: 20, letterSpacing: 1),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  'Sepatu Hiking',
                  style: primaryTextStyle.copyWith(fontWeight: semiBold,fontSize: 14),
                ),
                Text(
                  NumberFormat.currency(
                          symbol: 'IDR ', locale: 'id_ID', decimalDigits: 0)
                      .format(200000),
                  style:
                      priceTextStyle.copyWith(fontSize: 15, fontWeight: bold,color: primaryColor),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
