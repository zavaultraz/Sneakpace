part of '../pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget Header() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hai Kairi risol',
                  style: primaryTextStyle.copyWith(
                      fontSize: 24, fontWeight: semiBold),
                ),
                Text('Belanja apa hari ini', style: subtitleTextStyle)
              ],
            ),
          ),
          Container(
            width: 55,
            height: 55,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/image_profile.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget Category() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  'All Product',
                  style: primaryTextStyle.copyWith(
                      fontSize: 15, fontWeight: medium),
                )),
            const SizedBox(
              width: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(color: border1Color),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                'Shoes',
                style: primaryTextStyle,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(color: border1Color),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                'Tent',
                style: primaryTextStyle,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                color: transparentColor,
                border: Border.all(color: border1Color),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                'Carrier',
                style: primaryTextStyle,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(color: border1Color),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                'Cargo',
                style: primaryTextStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget PopularProductTitle() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        'Popular Products',
        style: primaryTextStyle.copyWith(fontSize: 22, fontWeight: semiBold),
      ),
    );
  }

  Widget NewArivalProductTitle() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        'New Arrival',
        style: primaryTextStyle.copyWith(fontSize: 22, fontWeight: semiBold),
      ),
    );
  }

  Widget PopularProduct() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ProductCard(),
            ProductCard(),
            ProductCard(),
          ],
        ),
      ),
    );
  }

  Widget NewArrivalProduct(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: defaultMargin),
      child: Column(
        children: [
          ProductTitle(),
          ProductTitle(),
          ProductTitle(),
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: ListView(
        children: [
          Header(),
          SizedBox(
            height: 14,
          ),
          Category(),
          SizedBox(
            height: 15,
          ),
          PopularProductTitle(),
          const SizedBox(
            height: 15,
          ),
          PopularProduct(),
          SizedBox(
            height: 15,
          ),
          NewArivalProductTitle(),
          NewArrivalProduct(),
        ],
      ),
    );
  }
}
