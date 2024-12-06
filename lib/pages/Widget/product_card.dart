part of 'widget.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/product-pages');
      },
      child: Container(
        width: 215,
        height: 235,
        margin: EdgeInsets.only(right: defaultMargin),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: blackColor.withOpacity(0.1),
              blurRadius: 10,
              spreadRadius: 5,
              offset: Offset(1, 1),
              blurStyle: BlurStyle.outer,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 215,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(25),
                ),
                image: DecorationImage(
                  image: AssetImage('assets/image_shoes.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Shoes',
                    style: subtitleTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    'Sepatu Gunung ANDO 1500',
                    style: primaryTextStyle.copyWith(
                        color: blackColor, fontSize: 16, fontWeight: semiBold),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    NumberFormat.currency(
                            symbol: 'IDR ', locale: 'id_ID', decimalDigits: 0)
                        .format(799000),
                    style:
                        priceTextStyle.copyWith(fontSize: 14, fontWeight: bold),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
