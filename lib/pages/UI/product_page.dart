part of '../pages.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  int currentIndex = 0;
  List<String> imagesproduct = [
    'assets/image_shoes.png',
    'assets/image_shoes2.png',
    'assets/image_shoes3.png',
  ];

  List<String> sugestProduct = [
    'assets/image_shoes.png',
    'assets/image_shoes2.png',
    'assets/image_shoes3.png',
    'assets/image_shoes4.png',
    'assets/image_shoes5.png',
    'assets/image_shoes6.png',
    'assets/image_shoes7.png',
    'assets/image_shoes8.png',
  ];

  @override
  Widget build(BuildContext context) {
    Widget Content() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: backgroundColor1,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Adidas Ultraboost - Power Edition',
                    style: primaryTextStyle.copyWith(
                      fontWeight: semiBold,
                      fontSize: 20,
                    ),
                    maxLines: 2,
                  ),
                ),
                SizedBox(width: 8),
                Container(
                    child: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ))
              ],
            ),
            Text(
              'Runing Shoes',
              style: subtitleTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 18,
              ),
            ),
            Text(
              NumberFormat.currency(
                      symbol: 'IDR ', locale: 'id_ID', decimalDigits: 0)
                  .format(500000),
              style: priceTextStyle.copyWith(
                  fontSize: 26, fontWeight: bold, color: Colors.white),
            ),
            SizedBox(
              height: 14,
            ),
            Text(
              'Description',
              style:
                  primaryTextStyle.copyWith(fontSize: 20, fontWeight: semiBold),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Adidas Ultraboost adalah sepatu lari ikonik yang dikenal dengan kenyamanan dan performa luar biasa. Dengan teknologi Boost yang revolusioner, sepatu ini memberikan bantalan yang sangat responsif dan energi yang tak terbatas pada setiap langkah. Upper Primeknit yang adaptif memberikan fit seperti kaos kaki, sementara outsole Continental Rubber memastikan traksi yang optimal di berbagai permukaan.',
              style:
                  primaryTextStyle.copyWith(fontSize: 16, fontWeight: regular),
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Color',
              style:
                  primaryTextStyle.copyWith(fontSize: 20, fontWeight: semiBold),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    margin: EdgeInsets.only(right: 16),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white),
                        color: Colors.redAccent),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    margin: EdgeInsets.only(right: 16),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white),
                        color: Colors.grey),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    margin: EdgeInsets.only(right: 16),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white),
                        color: Colors.black),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Size',
              style:
                  primaryTextStyle.copyWith(fontSize: 20, fontWeight: semiBold),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 70,
                    height: 30,
                    margin: EdgeInsets.only(right: 16),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: backgroundColor2),
                    child: Text(
                      '39',
                      style: primaryTextStyle.copyWith(
                          fontWeight: FontWeight.bold, fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    width: 70,
                    height: 30,
                    margin: EdgeInsets.only(right: 16),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: backgroundColor2),
                    child: Text(
                      '40',
                      style: primaryTextStyle.copyWith(
                          fontWeight: FontWeight.bold, fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    width: 70,
                    height: 30,
                    margin: EdgeInsets.only(right: 16),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: backgroundColor2),
                    child: Text(
                      '41',
                      style: primaryTextStyle.copyWith(
                          fontWeight: FontWeight.bold, fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    width: 70,
                    height: 30,
                    margin: EdgeInsets.only(right: 16),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: backgroundColor2),
                    child: Text(
                      '42',
                      style: primaryTextStyle.copyWith(
                          fontWeight: FontWeight.bold, fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    width: 70,
                    height: 30,
                    margin: EdgeInsets.only(right: 16),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: backgroundColor2),
                    child: Text(
                      '43',
                      style: primaryTextStyle.copyWith(
                          fontWeight: FontWeight.bold, fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Best shoes for you',
              style:
                  primaryTextStyle.copyWith(fontSize: 20, fontWeight: semiBold),
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: sugestProduct.map((e) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: backgroundColor5,
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: 150,
                            height: 70,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.vertical(top: Radius.circular(8)),
                              image: DecorationImage(
                                  image: AssetImage(e), fit: BoxFit.cover),
                            ),
                          ),
                          Text('Adidas Miro Dex',style: primaryTextStyle.copyWith(fontWeight: semiBold),maxLines: 1,overflow: TextOverflow.ellipsis,),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
            )
          ],
        ),
      );
    }

    Widget indicatorBar(int index) {
      return Container(
        width: currentIndex == index ? 30 : 10,
        height: 10,
        margin: EdgeInsets.symmetric(horizontal: 2),
        decoration: BoxDecoration(
            borderRadius: currentIndex == index
                ? BorderRadius.circular(10)
                : BorderRadius.circular(5),
            color: currentIndex == index ? primaryColor : backgroundColor1,
            border: Border.all(color: priceColor)),
      );
    }

    Widget indicator() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (var i = 0; i < imagesproduct.length; i++) indicatorBar(i),
        ],
      );
    }

    Widget heder() {
      int index = 0;
      return Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20, right: 20, left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: backgroundColor1,
                    ),
                    child: Icon(
                      Icons.chevron_left,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.shopping_cart,
                    size: 30,
                    color: backgroundColor1,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: CarouselSlider(
              items: imagesproduct
                  .map((element) => Image.asset(
                        element,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                      ))
                  .toList(),
              options: CarouselOptions(
                autoPlay: true,
                enableInfiniteScroll: false,
                viewportFraction: 1,
                height: 250,
                reverse: true,
                autoPlayInterval: Duration(seconds: 2),
                clipBehavior: Clip.antiAlias,
                enlargeCenterPage: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
            ),
          ),
          indicator(),
        ],
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor6,
      body: ListView(
        children: [heder(), Content()],
      ),
    );
  }
}
