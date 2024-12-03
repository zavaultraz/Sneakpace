part of 'widget.dart';

class ChatBuble extends StatelessWidget {
  const ChatBuble({super.key, this.text = '', this.isSender = false, this.hasProduct = false});

  final String text;
  final bool isSender;
  final bool hasProduct;

  @override
  Widget ProductPreview() {
    return Container(
      width: 270,
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: backgroundColor5,
        border: Border.all(
          color: primaryTextColor,
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  'assets/image_shoes.png',
                  width: 64,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sepatu Gunung Ando',
                      style: primaryTextStyle.copyWith(
                          fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    Text(
                      NumberFormat.currency(
                              symbol: 'IDR ', locale: 'id_ID', decimalDigits: 0)
                          .format(799000),
                      style: priceTextStyle.copyWith(
                          fontSize: 14,
                          fontStyle: FontStyle.italic,
                          fontWeight: bold,
                          color: secondaryTextColor),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              OutlinedButton(
                onPressed: () {},
                child: Text(
                  'Add to chart',
                  style: primaryTextStyle.copyWith(fontWeight: medium),
                ),
                style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.white)),
              ),
              SizedBox(
                width: 5,
              ),
              OutlinedButton(
                onPressed: () {},
                child: Text(
                  'Buy Now',
                  style: primaryTextStyle.copyWith(fontWeight: bold),
                ),
                style: OutlinedButton.styleFrom(
                    side: BorderSide(
                      color: primaryColor,
                    ),
                    backgroundColor: primaryColor),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(0),
          bottomLeft: Radius.circular(12),
          bottomRight: Radius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          hasProduct ? ProductPreview() : SizedBox(),
          Container(
            constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.5),
            decoration: BoxDecoration(
              color: backgroundColor5,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(isSender ? 20:0),
                topRight: Radius.circular(isSender ? 0 : 20),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                text,
                style:
                    primaryTextStyle.copyWith(fontWeight: medium, fontSize: 15),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
